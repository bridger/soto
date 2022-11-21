//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

/// Error enum for XRay
public struct XRayErrorType: AWSErrorType {
    enum Code: String {
        case invalidPolicyRevisionIdException = "InvalidPolicyRevisionIdException"
        case invalidRequestException = "InvalidRequestException"
        case lockoutPreventionException = "LockoutPreventionException"
        case malformedPolicyDocumentException = "MalformedPolicyDocumentException"
        case policyCountLimitExceededException = "PolicyCountLimitExceededException"
        case policySizeLimitExceededException = "PolicySizeLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case ruleLimitExceededException = "RuleLimitExceededException"
        case throttledException = "ThrottledException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize XRay
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// A policy revision id was provided which does not match the latest policy revision. This exception is also  if a policy revision id of 0 is provided via PutResourcePolicy and a policy with the same name already exists.
    public static var invalidPolicyRevisionIdException: Self { .init(.invalidPolicyRevisionIdException) }
    /// The request is missing required parameters or has invalid parameters.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The provided resource policy would prevent the caller of this request from calling PutResourcePolicy in the future.
    public static var lockoutPreventionException: Self { .init(.lockoutPreventionException) }
    /// Invalid policy document provided in request.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// Exceeded the maximum number of resource policies for a target Amazon Web Services account.
    public static var policyCountLimitExceededException: Self { .init(.policyCountLimitExceededException) }
    /// Exceeded the maximum size for a resource policy.
    public static var policySizeLimitExceededException: Self { .init(.policySizeLimitExceededException) }
    /// The resource was not found. Verify that the name or Amazon Resource Name (ARN) of the resource is correct.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You have reached the maximum number of sampling rules.
    public static var ruleLimitExceededException: Self { .init(.ruleLimitExceededException) }
    /// The request exceeds the maximum number of requests per second.
    public static var throttledException: Self { .init(.throttledException) }
    /// You have exceeded the maximum number of tags you can apply to this resource.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension XRayErrorType: Equatable {
    public static func == (lhs: XRayErrorType, rhs: XRayErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension XRayErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
