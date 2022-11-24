#!/usr/bin/env swift-sh
//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Files // JohnSundell/Files
import Foundation
import SotoSmithy
import SotoSmithyAWS // soto-project/soto-smithy

struct UpdateModelsError: Swift.Error {
    let reason: String
}

Smithy.registerAWSTraits()
do {
    try copyFiles(from: "./models", to: "./Sources")
} catch {
    print("\(error)")
}

/// Copy model files to source folders
/// - Parameters:
///   - from: model folder
///   - to: source folder tree
func copyFiles(from: String, to: String) throws {
    let srcFolder = try Folder(path: from)
    let toFolder = try Folder(path: to)
    for file in srcFolder.files {
        do {
            let data = try file.read()
            let model = try Smithy().decodeAST(from: data)
            // get service name
            let serviceName = try getServiceName(model)
            // create folder for service
            let folder = try toFolder.createSubfolder(at: "Soto\(serviceName)")
            // copy service model file across, deleting old one if it exists
            try folder.deleteIfExists(at: file.name)
            try file.copy(to: folder)
            // create dummy swift file for target to compile
            let dummyFile = try folder.createFileIfNeeded(at: "\(serviceName).swift")
            try dummyFile.write("// Soto\(serviceName) source built by SotoCodeGenerator Build plugin\n")
        } catch {
            throw UpdateModelsError(reason: "\(file): \(error)")
        }
    }
}

/// Return service name from API
func getServiceName(_ model: SotoSmithy.Model) throws -> String {
    guard let service = model.select(type: SotoSmithy.ServiceShape.self).first else { throw UpdateModelsError(reason: "No service object") }

    guard let awsService = service.value.trait(type: AwsServiceTrait.self) else {
        throw UpdateModelsError(reason: "\(service.key) does not have a \(AwsServiceTrait.staticName) trait")
    }

    // https://awslabs.github.io/smithy/1.0/spec/aws/aws-core.html#choosing-an-sdk-service-id

    var sdkId = awsService.sdkId

    // Strip out prefix names not reflected in service client symbol names.
    let stripServiceNamePrefixes: [String] = ["Amazon", "AWS"]
    for prefix in stripServiceNamePrefixes {
        sdkId = sdkId.deletingPrefix(prefix)
    }

    // separate by non-alphanumeric character, then capitalize the first letter of each component
    // and join back together
    let serviceName = sdkId
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .map { $0.prefix(1).capitalized + $0.dropFirst() }
        .joined()

    return patchServiceName(serviceName)
}

func patchServiceName(_ name: String) -> String {
    let patch: [String: String] = [
        "Codeartifact": "CodeArtifact",
        "CodestarNotifications": "CodeStarNotifications",
        "ECRPUBLIC": "ECRPublic",
        "Fis": "FIS",
        "Identitystore": "IdentityStore",
        "IotDeviceAdvisor": "IoTDeviceAdvisor",
        "Ivs": "IVS",
        "Mq": "MQ",
        "Savingsplans": "SavingsPlans",
    ]
    return patch[name] ?? name
}

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}

extension Folder {
    func deleteIfExists(at name: String) throws {
        // copy service model file across, deleting old one if it exists
        do {
            let file = try self.file(at: name)
            try file.delete()
        } catch {}
    }
}
