//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for ResilienceHub
public struct ResilienceHubErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ResilienceHub
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

    /// You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Occurs when a conflict with a previous successful write is detected. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.
    public static var conflictException: Self { .init(.conflictException) }
    /// This exception occurs when there is an internal failure in the AWS Resilience Hub service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource could not be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You have exceeded your service quota. To perform the requested action, remove some of the relevant resources, or use Service Quotas to request a service quota increase.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The limit on the number of requests per second was exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Indicates that a request was not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension ResilienceHubErrorType: Equatable {
    public static func == (lhs: ResilienceHubErrorType, rhs: ResilienceHubErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ResilienceHubErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}