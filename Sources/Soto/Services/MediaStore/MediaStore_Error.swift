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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for MediaStore
public enum MediaStoreErrorType: AWSErrorType {
    case containerInUseException(message: String?)
    case containerNotFoundException(message: String?)
    case corsPolicyNotFoundException(message: String?)
    case internalServerError(message: String?)
    case limitExceededException(message: String?)
    case policyNotFoundException(message: String?)
}

extension MediaStoreErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ContainerInUseException":
            self = .containerInUseException(message: message)
        case "ContainerNotFoundException":
            self = .containerNotFoundException(message: message)
        case "CorsPolicyNotFoundException":
            self = .corsPolicyNotFoundException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "PolicyNotFoundException":
            self = .policyNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension MediaStoreErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .containerInUseException(let message):
            return "ContainerInUseException: \(message ?? "")"
        case .containerNotFoundException(let message):
            return "ContainerNotFoundException: \(message ?? "")"
        case .corsPolicyNotFoundException(let message):
            return "CorsPolicyNotFoundException: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .policyNotFoundException(let message):
            return "PolicyNotFoundException: \(message ?? "")"
        }
    }
}