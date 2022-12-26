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

import Foundation
import SotoCore

extension BackupStorage {
    // MARK: Enums

    public enum DataChecksumAlgorithm: String, CustomStringConvertible, Codable, _SotoSendable {
        case sha256 = "SHA256"
        public var description: String { return self.rawValue }
    }

    public enum SummaryChecksumAlgorithm: String, CustomStringConvertible, Codable, _SotoSendable {
        case summary = "SUMMARY"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct BackupObject: AWSDecodableShape {
        /// Number of chunks in object
        public let chunksCount: Int64?
        /// Metadata string associated with the Object
        public let metadataString: String?
        /// Object name
        public let name: String
        /// Object checksum
        public let objectChecksum: String
        /// Checksum algorithm
        public let objectChecksumAlgorithm: SummaryChecksumAlgorithm
        /// Object token
        public let objectToken: String

        public init(chunksCount: Int64? = nil, metadataString: String? = nil, name: String, objectChecksum: String, objectChecksumAlgorithm: SummaryChecksumAlgorithm, objectToken: String) {
            self.chunksCount = chunksCount
            self.metadataString = metadataString
            self.name = name
            self.objectChecksum = objectChecksum
            self.objectChecksumAlgorithm = objectChecksumAlgorithm
            self.objectToken = objectToken
        }

        private enum CodingKeys: String, CodingKey {
            case chunksCount = "ChunksCount"
            case metadataString = "MetadataString"
            case name = "Name"
            case objectChecksum = "ObjectChecksum"
            case objectChecksumAlgorithm = "ObjectChecksumAlgorithm"
            case objectToken = "ObjectToken"
        }
    }

    public struct Chunk: AWSDecodableShape {
        /// Chunk checksum
        public let checksum: String
        /// Checksum algorithm
        public let checksumAlgorithm: DataChecksumAlgorithm
        /// Chunk token
        public let chunkToken: String
        /// Chunk index
        public let index: Int64
        /// Chunk length
        public let length: Int64

        public init(checksum: String, checksumAlgorithm: DataChecksumAlgorithm, chunkToken: String, index: Int64, length: Int64) {
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.chunkToken = chunkToken
            self.index = index
            self.length = length
        }

        private enum CodingKeys: String, CodingKey {
            case checksum = "Checksum"
            case checksumAlgorithm = "ChecksumAlgorithm"
            case chunkToken = "ChunkToken"
            case index = "Index"
            case length = "Length"
        }
    }

    public struct DeleteObjectInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "backupJobId", location: .uri("BackupJobId")),
            AWSMemberEncoding(label: "objectName", location: .uri("ObjectName"))
        ]

        /// Backup job Id for the in-progress backup.
        public let backupJobId: String
        /// The name of the Object.
        public let objectName: String

        public init(backupJobId: String, objectName: String) {
            self.backupJobId = backupJobId
            self.objectName = objectName
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetChunkInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "chunkToken", location: .uri("ChunkToken")),
            AWSMemberEncoding(label: "storageJobId", location: .uri("StorageJobId"))
        ]

        /// Chunk token
        public let chunkToken: String
        /// Storage job id
        public let storageJobId: String

        public init(chunkToken: String, storageJobId: String) {
            self.chunkToken = chunkToken
            self.storageJobId = storageJobId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetChunkOutput: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "data"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "checksum", location: .header("x-amz-checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .header("x-amz-checksum-algorithm")),
            AWSMemberEncoding(label: "data", location: .body("Data")),
            AWSMemberEncoding(label: "length", location: .header("x-amz-data-length"))
        ]

        /// Data checksum
        public let checksum: String
        /// Checksum algorithm
        public let checksumAlgorithm: DataChecksumAlgorithm
        /// Chunk data
        public let data: AWSPayload
        /// Data length
        public let length: Int64

        public init(checksum: String, checksumAlgorithm: DataChecksumAlgorithm, data: AWSPayload, length: Int64) {
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.data = data
            self.length = length
        }

        private enum CodingKeys: String, CodingKey {
            case checksum = "x-amz-checksum"
            case checksumAlgorithm = "x-amz-checksum-algorithm"
            case data = "Data"
            case length = "x-amz-data-length"
        }
    }

    public struct GetObjectMetadataInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "objectToken", location: .uri("ObjectToken")),
            AWSMemberEncoding(label: "storageJobId", location: .uri("StorageJobId"))
        ]

        /// Object token.
        public let objectToken: String
        /// Backup job id for the in-progress backup.
        public let storageJobId: String

        public init(objectToken: String, storageJobId: String) {
            self.objectToken = objectToken
            self.storageJobId = storageJobId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetObjectMetadataOutput: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "metadataBlob"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "metadataBlob", location: .body("MetadataBlob")),
            AWSMemberEncoding(label: "metadataBlobChecksum", location: .header("x-amz-checksum")),
            AWSMemberEncoding(label: "metadataBlobChecksumAlgorithm", location: .header("x-amz-checksum-algorithm")),
            AWSMemberEncoding(label: "metadataBlobLength", location: .header("x-amz-data-length")),
            AWSMemberEncoding(label: "metadataString", location: .header("x-amz-metadata-string"))
        ]

        /// Metadata blob.
        public let metadataBlob: AWSPayload?
        /// MetadataBlob checksum.
        public let metadataBlobChecksum: String?
        /// Checksum algorithm.
        public let metadataBlobChecksumAlgorithm: DataChecksumAlgorithm?
        /// The size of MetadataBlob.
        public let metadataBlobLength: Int64?
        /// Metadata string.
        public let metadataString: String?

        public init(metadataBlob: AWSPayload? = nil, metadataBlobChecksum: String? = nil, metadataBlobChecksumAlgorithm: DataChecksumAlgorithm? = nil, metadataBlobLength: Int64? = nil, metadataString: String? = nil) {
            self.metadataBlob = metadataBlob
            self.metadataBlobChecksum = metadataBlobChecksum
            self.metadataBlobChecksumAlgorithm = metadataBlobChecksumAlgorithm
            self.metadataBlobLength = metadataBlobLength
            self.metadataString = metadataString
        }

        private enum CodingKeys: String, CodingKey {
            case metadataBlob = "MetadataBlob"
            case metadataBlobChecksum = "x-amz-checksum"
            case metadataBlobChecksumAlgorithm = "x-amz-checksum-algorithm"
            case metadataBlobLength = "x-amz-data-length"
            case metadataString = "x-amz-metadata-string"
        }
    }

    public struct ListChunksInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("max-results")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("next-token")),
            AWSMemberEncoding(label: "objectToken", location: .uri("ObjectToken")),
            AWSMemberEncoding(label: "storageJobId", location: .uri("StorageJobId"))
        ]

        /// Maximum number of chunks
        public let maxResults: Int?
        /// Pagination token
        public let nextToken: String?
        /// Object token
        public let objectToken: String
        /// Storage job id
        public let storageJobId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, objectToken: String, storageJobId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.objectToken = objectToken
            self.storageJobId = storageJobId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListChunksOutput: AWSDecodableShape {
        /// List of chunks
        public let chunkList: [Chunk]
        /// Pagination token
        public let nextToken: String?

        public init(chunkList: [Chunk], nextToken: String? = nil) {
            self.chunkList = chunkList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case chunkList = "ChunkList"
            case nextToken = "NextToken"
        }
    }

    public struct ListObjectsInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "createdAfter", location: .querystring("created-after")),
            AWSMemberEncoding(label: "createdBefore", location: .querystring("created-before")),
            AWSMemberEncoding(label: "maxResults", location: .querystring("max-results")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("next-token")),
            AWSMemberEncoding(label: "startingObjectName", location: .querystring("starting-object-name")),
            AWSMemberEncoding(label: "startingObjectPrefix", location: .querystring("starting-object-prefix")),
            AWSMemberEncoding(label: "storageJobId", location: .uri("StorageJobId"))
        ]

        /// (Optional) Created after filter
        public let createdAfter: Date?
        /// (Optional) Created before filter
        public let createdBefore: Date?
        /// Maximum objects count
        public let maxResults: Int?
        /// Pagination token
        public let nextToken: String?
        /// Optional, specifies the starting Object name to list from. Ignored if NextToken is not NULL
        public let startingObjectName: String?
        /// Optional, specifies the starting Object prefix to list from. Ignored if NextToken is not NULL
        public let startingObjectPrefix: String?
        /// Storage job id
        public let storageJobId: String

        public init(createdAfter: Date? = nil, createdBefore: Date? = nil, maxResults: Int? = nil, nextToken: String? = nil, startingObjectName: String? = nil, startingObjectPrefix: String? = nil, storageJobId: String) {
            self.createdAfter = createdAfter
            self.createdBefore = createdBefore
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.startingObjectName = startingObjectName
            self.startingObjectPrefix = startingObjectPrefix
            self.storageJobId = storageJobId
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListObjectsOutput: AWSDecodableShape {
        /// Pagination token
        public let nextToken: String?
        /// Object list
        public let objectList: [BackupObject]

        public init(nextToken: String? = nil, objectList: [BackupObject]) {
            self.nextToken = nextToken
            self.objectList = objectList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case objectList = "ObjectList"
        }
    }

    public struct NotifyObjectCompleteInput: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "metadataBlob"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "backupJobId", location: .uri("BackupJobId")),
            AWSMemberEncoding(label: "metadataBlobChecksum", location: .querystring("metadata-checksum")),
            AWSMemberEncoding(label: "metadataBlobChecksumAlgorithm", location: .querystring("metadata-checksum-algorithm")),
            AWSMemberEncoding(label: "metadataBlobLength", location: .querystring("metadata-blob-length")),
            AWSMemberEncoding(label: "metadataString", location: .querystring("metadata-string")),
            AWSMemberEncoding(label: "objectChecksum", location: .querystring("checksum")),
            AWSMemberEncoding(label: "objectChecksumAlgorithm", location: .querystring("checksum-algorithm")),
            AWSMemberEncoding(label: "uploadId", location: .uri("UploadId"))
        ]

        /// Backup job Id for the in-progress backup
        public let backupJobId: String
        /// Optional metadata associated with an Object. Maximum length is 4MB.
        public let metadataBlob: AWSPayload?
        /// Checksum of MetadataBlob.
        public let metadataBlobChecksum: String?
        /// Checksum algorithm.
        public let metadataBlobChecksumAlgorithm: DataChecksumAlgorithm?
        /// The size of MetadataBlob.
        public let metadataBlobLength: Int64?
        /// Optional metadata associated with an Object. Maximum string length is 256 bytes.
        public let metadataString: String?
        /// Object checksum
        public let objectChecksum: String
        /// Checksum algorithm
        public let objectChecksumAlgorithm: SummaryChecksumAlgorithm
        /// Upload Id for the in-progress upload
        public let uploadId: String

        public init(backupJobId: String, metadataBlob: AWSPayload? = nil, metadataBlobChecksum: String? = nil, metadataBlobChecksumAlgorithm: DataChecksumAlgorithm? = nil, metadataBlobLength: Int64? = nil, metadataString: String? = nil, objectChecksum: String, objectChecksumAlgorithm: SummaryChecksumAlgorithm, uploadId: String) {
            self.backupJobId = backupJobId
            self.metadataBlob = metadataBlob
            self.metadataBlobChecksum = metadataBlobChecksum
            self.metadataBlobChecksumAlgorithm = metadataBlobChecksumAlgorithm
            self.metadataBlobLength = metadataBlobLength
            self.metadataString = metadataString
            self.objectChecksum = objectChecksum
            self.objectChecksumAlgorithm = objectChecksumAlgorithm
            self.uploadId = uploadId
        }

        public func validate(name: String) throws {
            try self.validate(self.metadataString, name: "metadataString", parent: name, pattern: "^.{1,256}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct NotifyObjectCompleteOutput: AWSDecodableShape {
        /// Object checksum
        public let objectChecksum: String
        /// Checksum algorithm
        public let objectChecksumAlgorithm: SummaryChecksumAlgorithm

        public init(objectChecksum: String, objectChecksumAlgorithm: SummaryChecksumAlgorithm) {
            self.objectChecksum = objectChecksum
            self.objectChecksumAlgorithm = objectChecksumAlgorithm
        }

        private enum CodingKeys: String, CodingKey {
            case objectChecksum = "ObjectChecksum"
            case objectChecksumAlgorithm = "ObjectChecksumAlgorithm"
        }
    }

    public struct PutChunkInput: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "data"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "backupJobId", location: .uri("BackupJobId")),
            AWSMemberEncoding(label: "checksum", location: .querystring("checksum")),
            AWSMemberEncoding(label: "checksumAlgorithm", location: .querystring("checksum-algorithm")),
            AWSMemberEncoding(label: "chunkIndex", location: .uri("ChunkIndex")),
            AWSMemberEncoding(label: "length", location: .querystring("length")),
            AWSMemberEncoding(label: "uploadId", location: .uri("UploadId"))
        ]

        /// Backup job Id for the in-progress backup.
        public let backupJobId: String
        /// Data checksum
        public let checksum: String
        /// Checksum algorithm
        public let checksumAlgorithm: DataChecksumAlgorithm
        /// Describes this chunk's position relative to the other chunks
        public let chunkIndex: Int64
        /// Data to be uploaded
        public let data: AWSPayload
        /// Data length
        public let length: Int64
        /// Upload Id for the in-progress upload.
        public let uploadId: String

        public init(backupJobId: String, checksum: String, checksumAlgorithm: DataChecksumAlgorithm, chunkIndex: Int64, data: AWSPayload, length: Int64, uploadId: String) {
            self.backupJobId = backupJobId
            self.checksum = checksum
            self.checksumAlgorithm = checksumAlgorithm
            self.chunkIndex = chunkIndex
            self.data = data
            self.length = length
            self.uploadId = uploadId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PutChunkOutput: AWSDecodableShape {
        /// Chunk checksum
        public let chunkChecksum: String
        /// Checksum algorithm
        public let chunkChecksumAlgorithm: DataChecksumAlgorithm

        public init(chunkChecksum: String, chunkChecksumAlgorithm: DataChecksumAlgorithm) {
            self.chunkChecksum = chunkChecksum
            self.chunkChecksumAlgorithm = chunkChecksumAlgorithm
        }

        private enum CodingKeys: String, CodingKey {
            case chunkChecksum = "ChunkChecksum"
            case chunkChecksumAlgorithm = "ChunkChecksumAlgorithm"
        }
    }

    public struct PutObjectInput: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "inlineChunk"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming, .allowChunkedStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "backupJobId", location: .uri("BackupJobId")),
            AWSMemberEncoding(label: "inlineChunkChecksum", location: .querystring("checksum")),
            AWSMemberEncoding(label: "inlineChunkChecksumAlgorithm", location: .querystring("checksum-algorithm")),
            AWSMemberEncoding(label: "inlineChunkLength", location: .querystring("length")),
            AWSMemberEncoding(label: "metadataString", location: .querystring("metadata-string")),
            AWSMemberEncoding(label: "objectChecksum", location: .querystring("object-checksum")),
            AWSMemberEncoding(label: "objectChecksumAlgorithm", location: .querystring("object-checksum-algorithm")),
            AWSMemberEncoding(label: "objectName", location: .uri("ObjectName")),
            AWSMemberEncoding(label: "throwOnDuplicate", location: .querystring("throwOnDuplicate"))
        ]

        /// Backup job Id for the in-progress backup.
        public let backupJobId: String
        /// Inline chunk data to be uploaded.
        public let inlineChunk: AWSPayload?
        /// Inline chunk checksum
        public let inlineChunkChecksum: String?
        /// Inline chunk checksum algorithm
        public let inlineChunkChecksumAlgorithm: String?
        /// Length of the inline chunk data.
        public let inlineChunkLength: Int64?
        /// Store user defined metadata like backup checksum, disk ids, restore metadata etc.
        public let metadataString: String?
        /// object checksum
        public let objectChecksum: String?
        /// object checksum algorithm
        public let objectChecksumAlgorithm: SummaryChecksumAlgorithm?
        /// The name of the Object to be uploaded.
        public let objectName: String
        /// Throw an exception if Object name is already exist.
        public let throwOnDuplicate: Bool?

        public init(backupJobId: String, inlineChunk: AWSPayload? = nil, inlineChunkChecksum: String? = nil, inlineChunkChecksumAlgorithm: String? = nil, inlineChunkLength: Int64? = nil, metadataString: String? = nil, objectChecksum: String? = nil, objectChecksumAlgorithm: SummaryChecksumAlgorithm? = nil, objectName: String, throwOnDuplicate: Bool? = nil) {
            self.backupJobId = backupJobId
            self.inlineChunk = inlineChunk
            self.inlineChunkChecksum = inlineChunkChecksum
            self.inlineChunkChecksumAlgorithm = inlineChunkChecksumAlgorithm
            self.inlineChunkLength = inlineChunkLength
            self.metadataString = metadataString
            self.objectChecksum = objectChecksum
            self.objectChecksumAlgorithm = objectChecksumAlgorithm
            self.objectName = objectName
            self.throwOnDuplicate = throwOnDuplicate
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct PutObjectOutput: AWSDecodableShape {
        /// Inline chunk checksum
        public let inlineChunkChecksum: String
        /// Inline chunk checksum algorithm
        public let inlineChunkChecksumAlgorithm: DataChecksumAlgorithm
        /// object checksum
        public let objectChecksum: String
        /// object checksum algorithm
        public let objectChecksumAlgorithm: SummaryChecksumAlgorithm

        public init(inlineChunkChecksum: String, inlineChunkChecksumAlgorithm: DataChecksumAlgorithm, objectChecksum: String, objectChecksumAlgorithm: SummaryChecksumAlgorithm) {
            self.inlineChunkChecksum = inlineChunkChecksum
            self.inlineChunkChecksumAlgorithm = inlineChunkChecksumAlgorithm
            self.objectChecksum = objectChecksum
            self.objectChecksumAlgorithm = objectChecksumAlgorithm
        }

        private enum CodingKeys: String, CodingKey {
            case inlineChunkChecksum = "InlineChunkChecksum"
            case inlineChunkChecksumAlgorithm = "InlineChunkChecksumAlgorithm"
            case objectChecksum = "ObjectChecksum"
            case objectChecksumAlgorithm = "ObjectChecksumAlgorithm"
        }
    }

    public struct StartObjectInput: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "backupJobId", location: .uri("BackupJobId")),
            AWSMemberEncoding(label: "objectName", location: .uri("ObjectName"))
        ]

        /// Backup job Id for the in-progress backup
        public let backupJobId: String
        /// Name for the object.
        public let objectName: String
        /// Throw an exception if Object name is already exist.
        public let throwOnDuplicate: Bool?

        public init(backupJobId: String, objectName: String, throwOnDuplicate: Bool? = nil) {
            self.backupJobId = backupJobId
            self.objectName = objectName
            self.throwOnDuplicate = throwOnDuplicate
        }

        private enum CodingKeys: String, CodingKey {
            case throwOnDuplicate = "ThrowOnDuplicate"
        }
    }

    public struct StartObjectOutput: AWSDecodableShape {
        /// Upload Id for a given upload.
        public let uploadId: String

        public init(uploadId: String) {
            self.uploadId = uploadId
        }

        private enum CodingKeys: String, CodingKey {
            case uploadId = "UploadId"
        }
    }
}

// MARK: - Errors

/// Error enum for BackupStorage
public struct BackupStorageErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case dataAlreadyExistsException = "DataAlreadyExistsException"
        case illegalArgumentException = "IllegalArgumentException"
        case kmsInvalidKeyUsageException = "KMSInvalidKeyUsageException"
        case notReadableInputStreamException = "NotReadableInputStreamException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case retryableException = "RetryableException"
        case serviceInternalException = "ServiceInternalException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize BackupStorage
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

    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Non-retryable exception. Attempted to create already existing object or chunk. This message contains a checksum of already presented data.
    public static var dataAlreadyExistsException: Self { .init(.dataAlreadyExistsException) }
    /// Non-retryable exception, indicates client error (wrong argument passed to API). See exception message for details.
    public static var illegalArgumentException: Self { .init(.illegalArgumentException) }
    /// Non-retryable exception. Indicates the KMS key usage is incorrect. See exception message for details.
    public static var kmsInvalidKeyUsageException: Self { .init(.kmsInvalidKeyUsageException) }
    /// Retryalble exception. Indicated issues while reading an input stream due to the networking issues or connection drop on the client side.
    public static var notReadableInputStreamException: Self { .init(.notReadableInputStreamException) }
    /// Non-retryable exception. Attempted to make an operation on non-existing or expired resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Retryable exception. In general indicates internal failure that can be fixed by retry.
    public static var retryableException: Self { .init(.retryableException) }
    /// Deprecated. To be removed from the model.
    public static var serviceInternalException: Self { .init(.serviceInternalException) }
    /// Retryable exception, indicates internal server error.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// Increased rate over throttling limits. Can be retried with exponential backoff.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension BackupStorageErrorType: Equatable {
    public static func == (lhs: BackupStorageErrorType, rhs: BackupStorageErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension BackupStorageErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
