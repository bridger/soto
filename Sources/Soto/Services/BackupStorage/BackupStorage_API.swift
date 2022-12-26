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

@_exported import SotoCore

/// Service object for interacting with AWS BackupStorage service.
///
/// The frontend service for Cryo Storage.
public struct BackupStorage: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the BackupStorage client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "backupstorage",
            signingName: "backup-storage",
            serviceProtocol: .restjson,
            apiVersion: "2018-04-10",
            endpoint: endpoint,
            errorType: BackupStorageErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Delete Object from the incremental base Backup.
    @discardableResult public func deleteObject(_ input: DeleteObjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteObject", path: "/backup-jobs/{BackupJobId}/object/{ObjectName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the specified object's chunk.
    public func getChunk(_ input: GetChunkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChunkOutput> {
        return self.client.execute(operation: "GetChunk", path: "/restore-jobs/{StorageJobId}/chunk/{ChunkToken}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get metadata associated with an Object.
    public func getObjectMetadata(_ input: GetObjectMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetObjectMetadataOutput> {
        return self.client.execute(operation: "GetObjectMetadata", path: "/restore-jobs/{StorageJobId}/object/{ObjectToken}/metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List chunks in a given Object
    public func listChunks(_ input: ListChunksInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChunksOutput> {
        return self.client.execute(operation: "ListChunks", path: "/restore-jobs/{StorageJobId}/chunks/{ObjectToken}/list", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all Objects in a given Backup.
    public func listObjects(_ input: ListObjectsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListObjectsOutput> {
        return self.client.execute(operation: "ListObjects", path: "/restore-jobs/{StorageJobId}/objects/list", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Complete upload
    public func notifyObjectComplete(_ input: NotifyObjectCompleteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<NotifyObjectCompleteOutput> {
        return self.client.execute(operation: "NotifyObjectComplete", path: "/backup-jobs/{BackupJobId}/object/{UploadId}/complete", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upload chunk.
    public func putChunk(_ input: PutChunkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutChunkOutput> {
        return self.client.execute(operation: "PutChunk", path: "/backup-jobs/{BackupJobId}/chunk/{UploadId}/{ChunkIndex}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Upload object that can store object metadata String and data blob in single API call using inline chunk field.
    public func putObject(_ input: PutObjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutObjectOutput> {
        return self.client.execute(operation: "PutObject", path: "/backup-jobs/{BackupJobId}/object/{ObjectName}/put-object", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start upload containing one or many chunks.
    public func startObject(_ input: StartObjectInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartObjectOutput> {
        return self.client.execute(operation: "StartObject", path: "/backup-jobs/{BackupJobId}/object/{ObjectName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming API Calls

    /// Gets the specified object's chunk.
    public func getChunkStreaming(_ input: GetChunkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) -> EventLoopFuture<GetChunkOutput> {
        return self.client.execute(operation: "GetChunk", path: "/restore-jobs/{StorageJobId}/chunk/{ChunkToken}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }

    /// Get metadata associated with an Object.
    public func getObjectMetadataStreaming(_ input: GetObjectMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) -> EventLoopFuture<GetObjectMetadataOutput> {
        return self.client.execute(operation: "GetObjectMetadata", path: "/restore-jobs/{StorageJobId}/object/{ObjectToken}/metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

extension BackupStorage {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: BackupStorage, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension BackupStorage {
    ///  List chunks in a given Object
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listChunksPaginator<Result>(
        _ input: ListChunksInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChunksOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listChunks,
            inputKey: \ListChunksInput.nextToken,
            outputKey: \ListChunksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listChunksPaginator(
        _ input: ListChunksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChunksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listChunks,
            inputKey: \ListChunksInput.nextToken,
            outputKey: \ListChunksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all Objects in a given Backup.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listObjectsPaginator<Result>(
        _ input: ListObjectsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListObjectsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listObjects,
            inputKey: \ListObjectsInput.nextToken,
            outputKey: \ListObjectsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listObjectsPaginator(
        _ input: ListObjectsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listObjects,
            inputKey: \ListObjectsInput.nextToken,
            outputKey: \ListObjectsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension BackupStorage.ListChunksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> BackupStorage.ListChunksInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            objectToken: self.objectToken,
            storageJobId: self.storageJobId
        )
    }
}

extension BackupStorage.ListObjectsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> BackupStorage.ListObjectsInput {
        return .init(
            createdAfter: self.createdAfter,
            createdBefore: self.createdBefore,
            maxResults: self.maxResults,
            nextToken: token,
            startingObjectName: self.startingObjectName,
            startingObjectPrefix: self.startingObjectPrefix,
            storageJobId: self.storageJobId
        )
    }
}
