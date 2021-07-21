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

/// Error enum for CloudSearch
public struct CloudSearchErrorType: AWSErrorType {
    enum Code: String {
        case baseException = "BaseException"
        case disabledOperationException = "DisabledAction"
        case internalException = "InternalException"
        case invalidTypeException = "InvalidType"
        case limitExceededException = "LimitExceeded"
        case resourceAlreadyExistsException = "ResourceAlreadyExists"
        case resourceNotFoundException = "ResourceNotFound"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudSearch
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

    /// An error occurred while processing the request.
    public static var baseException: Self { .init(.baseException) }
    /// The request was rejected because it attempted an operation which is not enabled.
    public static var disabledOperationException: Self { .init(.disabledOperationException) }
    /// An internal error occurred while processing the request. If this problem persists, report an issue from the Service Health Dashboard.
    public static var internalException: Self { .init(.internalException) }
    /// The request was rejected because it specified an invalid type definition.
    public static var invalidTypeException: Self { .init(.invalidTypeException) }
    /// The request was rejected because a resource limit has already been met.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The request was rejected because it attempted to create a resource that already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The request was rejected because it attempted to reference a resource that does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request was rejected because it has invalid parameters.
    public static var validationException: Self { .init(.validationException) }
}

extension CloudSearchErrorType: Equatable {
    public static func == (lhs: CloudSearchErrorType, rhs: CloudSearchErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudSearchErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
