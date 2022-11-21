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

/// Error enum for WorkDocs
public struct WorkDocsErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case conflictingOperationException = "ConflictingOperationException"
        case customMetadataLimitExceededException = "CustomMetadataLimitExceededException"
        case deactivatingLastSystemUserException = "DeactivatingLastSystemUserException"
        case documentLockedForCommentsException = "DocumentLockedForCommentsException"
        case draftUploadOutOfSyncException = "DraftUploadOutOfSyncException"
        case entityAlreadyExistsException = "EntityAlreadyExistsException"
        case entityNotExistsException = "EntityNotExistsException"
        case failedDependencyException = "FailedDependencyException"
        case illegalUserStateException = "IllegalUserStateException"
        case invalidArgumentException = "InvalidArgumentException"
        case invalidCommentOperationException = "InvalidCommentOperationException"
        case invalidOperationException = "InvalidOperationException"
        case invalidPasswordException = "InvalidPasswordException"
        case limitExceededException = "LimitExceededException"
        case prohibitedStateException = "ProhibitedStateException"
        case requestedEntityTooLargeException = "RequestedEntityTooLargeException"
        case resourceAlreadyCheckedOutException = "ResourceAlreadyCheckedOutException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case storageLimitExceededException = "StorageLimitExceededException"
        case storageLimitWillExceedException = "StorageLimitWillExceedException"
        case tooManyLabelsException = "TooManyLabelsException"
        case tooManySubscriptionsException = "TooManySubscriptionsException"
        case unauthorizedOperationException = "UnauthorizedOperationException"
        case unauthorizedResourceAccessException = "UnauthorizedResourceAccessException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WorkDocs
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

    /// The resource hierarchy is changing.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// Another operation is in progress on the resource that conflicts with the current operation.
    public static var conflictingOperationException: Self { .init(.conflictingOperationException) }
    /// The limit has been reached on the number of custom properties for the specified resource.
    public static var customMetadataLimitExceededException: Self { .init(.customMetadataLimitExceededException) }
    /// The last user in the organization is being deactivated.
    public static var deactivatingLastSystemUserException: Self { .init(.deactivatingLastSystemUserException) }
    /// This exception is thrown when the document is locked for comments and user tries to create or delete a comment on that document.
    public static var documentLockedForCommentsException: Self { .init(.documentLockedForCommentsException) }
    /// This exception is thrown when a valid checkout ID is not presented on document version upload calls for a document that has been checked out from Web client.
    public static var draftUploadOutOfSyncException: Self { .init(.draftUploadOutOfSyncException) }
    /// The resource already exists.
    public static var entityAlreadyExistsException: Self { .init(.entityAlreadyExistsException) }
    /// The resource does not exist.
    public static var entityNotExistsException: Self { .init(.entityNotExistsException) }
    /// The AWS Directory Service cannot reach an on-premises instance. Or a dependency under the control of the organization is failing, such as a connected Active Directory.
    public static var failedDependencyException: Self { .init(.failedDependencyException) }
    /// The user is undergoing transfer of ownership.
    public static var illegalUserStateException: Self { .init(.illegalUserStateException) }
    /// The pagination marker or limit fields are not valid.
    public static var invalidArgumentException: Self { .init(.invalidArgumentException) }
    /// The requested operation is not allowed on the specified comment object.
    public static var invalidCommentOperationException: Self { .init(.invalidCommentOperationException) }
    /// The operation is invalid.
    public static var invalidOperationException: Self { .init(.invalidOperationException) }
    /// The password is invalid.
    public static var invalidPasswordException: Self { .init(.invalidPasswordException) }
    /// The maximum of 100,000 files and folders under the parent folder has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified document version is not in the INITIALIZED state.
    public static var prohibitedStateException: Self { .init(.prohibitedStateException) }
    /// The response is too large to return. The request must include a filter to reduce the size of the response.
    public static var requestedEntityTooLargeException: Self { .init(.requestedEntityTooLargeException) }
    /// The resource is already checked out.
    public static var resourceAlreadyCheckedOutException: Self { .init(.resourceAlreadyCheckedOutException) }
    /// One or more of the dependencies is unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The storage limit has been exceeded.
    public static var storageLimitExceededException: Self { .init(.storageLimitExceededException) }
    /// The storage limit will be exceeded.
    public static var storageLimitWillExceedException: Self { .init(.storageLimitWillExceedException) }
    /// The limit has been reached on the number of labels for the specified resource.
    public static var tooManyLabelsException: Self { .init(.tooManyLabelsException) }
    /// You've reached the limit on the number of subscriptions for the WorkDocs instance.
    public static var tooManySubscriptionsException: Self { .init(.tooManySubscriptionsException) }
    /// The operation is not permitted.
    public static var unauthorizedOperationException: Self { .init(.unauthorizedOperationException) }
    /// The caller does not have access to perform the action on the resource.
    public static var unauthorizedResourceAccessException: Self { .init(.unauthorizedResourceAccessException) }
}

extension WorkDocsErrorType: Equatable {
    public static func == (lhs: WorkDocsErrorType, rhs: WorkDocsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WorkDocsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
