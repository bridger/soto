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

/// Service object for interacting with AWS S3Outposts service.
///
/// Amazon S3 on Outposts provides access to S3 on Outposts operations.
public struct S3Outposts: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the S3Outposts client
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
            service: "s3-outposts",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            errorType: S3OutpostsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates an endpoint and associates it with the specified Outpost.  It can take up to 5 minutes for this action to finish.    Related actions include:    DeleteEndpoint     ListEndpoints
    public func createEndpoint(_ input: CreateEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEndpointResult> {
        return self.client.execute(operation: "CreateEndpoint", path: "/S3Outposts/CreateEndpoint", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an endpoint.  It can take up to 5 minutes for this action to finish.    Related actions include:    CreateEndpoint     ListEndpoints
    @discardableResult public func deleteEndpoint(_ input: DeleteEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteEndpoint", path: "/S3Outposts/DeleteEndpoint", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists endpoints associated with the specified Outpost.  Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listEndpoints(_ input: ListEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEndpointsResult> {
        return self.client.execute(operation: "ListEndpoints", path: "/S3Outposts/ListEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listSharedEndpoints(_ input: ListSharedEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSharedEndpointsResult> {
        return self.client.execute(operation: "ListSharedEndpoints", path: "/S3Outposts/ListSharedEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension S3Outposts {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: S3Outposts, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension S3Outposts {
    ///  Lists endpoints associated with the specified Outpost.  Related actions include:    CreateEndpoint     DeleteEndpoint
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
    public func listEndpointsPaginator<Result>(
        _ input: ListEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEndpointsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
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
    public func listEndpointsPaginator(
        _ input: ListEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEndpointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:    CreateEndpoint     DeleteEndpoint
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
    public func listSharedEndpointsPaginator<Result>(
        _ input: ListSharedEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSharedEndpointsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSharedEndpoints,
            inputKey: \ListSharedEndpointsRequest.nextToken,
            outputKey: \ListSharedEndpointsResult.nextToken,
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
    public func listSharedEndpointsPaginator(
        _ input: ListSharedEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSharedEndpointsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSharedEndpoints,
            inputKey: \ListSharedEndpointsRequest.nextToken,
            outputKey: \ListSharedEndpointsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension S3Outposts.ListEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension S3Outposts.ListSharedEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> S3Outposts.ListSharedEndpointsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )
    }
}
