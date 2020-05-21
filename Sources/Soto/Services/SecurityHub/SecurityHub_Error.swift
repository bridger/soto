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

/// Error enum for SecurityHub
public enum SecurityHubErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case internalException(message: String?)
    case invalidAccessException(message: String?)
    case invalidInputException(message: String?)
    case limitExceededException(message: String?)
    case resourceConflictException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension SecurityHubErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidAccessException":
            self = .invalidAccessException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension SecurityHubErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .internalException(let message):
            return "InternalException: \(message ?? "")"
        case .invalidAccessException(let message):
            return "InvalidAccessException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceConflictException(let message):
            return "ResourceConflictException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}