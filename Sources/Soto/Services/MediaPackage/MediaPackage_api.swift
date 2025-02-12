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

/// Service object for interacting with AWS MediaPackage service.
///
/// AWS Elemental MediaPackage
public struct MediaPackage: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaPackage client
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
            service: "mediapackage",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-12",
            endpoint: endpoint,
            errorType: MediaPackageErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Changes the Channel's properities to configure log subscription
    public func configureLogs(_ input: ConfigureLogsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfigureLogsResponse> {
        return self.client.execute(operation: "ConfigureLogs", path: "/channels/{Id}/configure_logs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Channel.
    public func createChannel(_ input: CreateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return self.client.execute(operation: "CreateChannel", path: "/channels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new HarvestJob record.
    public func createHarvestJob(_ input: CreateHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHarvestJobResponse> {
        return self.client.execute(operation: "CreateHarvestJob", path: "/harvest_jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new OriginEndpoint record.
    public func createOriginEndpoint(_ input: CreateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOriginEndpointResponse> {
        return self.client.execute(operation: "CreateOriginEndpoint", path: "/origin_endpoints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing Channel.
    public func deleteChannel(_ input: DeleteChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteChannelResponse> {
        return self.client.execute(operation: "DeleteChannel", path: "/channels/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing OriginEndpoint.
    public func deleteOriginEndpoint(_ input: DeleteOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOriginEndpointResponse> {
        return self.client.execute(operation: "DeleteOriginEndpoint", path: "/origin_endpoints/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about a Channel.
    public func describeChannel(_ input: DescribeChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelResponse> {
        return self.client.execute(operation: "DescribeChannel", path: "/channels/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about an existing HarvestJob.
    public func describeHarvestJob(_ input: DescribeHarvestJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHarvestJobResponse> {
        return self.client.execute(operation: "DescribeHarvestJob", path: "/harvest_jobs/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets details about an existing OriginEndpoint.
    public func describeOriginEndpoint(_ input: DescribeOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOriginEndpointResponse> {
        return self.client.execute(operation: "DescribeOriginEndpoint", path: "/origin_endpoints/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of Channels.
    public func listChannels(_ input: ListChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return self.client.execute(operation: "ListChannels", path: "/channels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of HarvestJob records.
    public func listHarvestJobs(_ input: ListHarvestJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListHarvestJobsResponse> {
        return self.client.execute(operation: "ListHarvestJobs", path: "/harvest_jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a collection of OriginEndpoint records.
    public func listOriginEndpoints(_ input: ListOriginEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOriginEndpointsResponse> {
        return self.client.execute(operation: "ListOriginEndpoints", path: "/origin_endpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead
    @available(*, deprecated, message: "This API is deprecated. Please use RotateIngestEndpointCredentials instead")
    public func rotateChannelCredentials(_ input: RotateChannelCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RotateChannelCredentialsResponse> {
        return self.client.execute(operation: "RotateChannelCredentials", path: "/channels/{Id}/credentials", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.
    public func rotateIngestEndpointCredentials(_ input: RotateIngestEndpointCredentialsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RotateIngestEndpointCredentialsResponse> {
        return self.client.execute(operation: "RotateIngestEndpointCredentials", path: "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Channel.
    public func updateChannel(_ input: UpdateChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateChannelResponse> {
        return self.client.execute(operation: "UpdateChannel", path: "/channels/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing OriginEndpoint.
    public func updateOriginEndpoint(_ input: UpdateOriginEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOriginEndpointResponse> {
        return self.client.execute(operation: "UpdateOriginEndpoint", path: "/origin_endpoints/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension MediaPackage {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MediaPackage, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension MediaPackage {
    ///  Returns a collection of Channels.
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
    public func listChannelsPaginator<Result>(
        _ input: ListChannelsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListChannelsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
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
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListChannelsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of HarvestJob records.
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
    public func listHarvestJobsPaginator<Result>(
        _ input: ListHarvestJobsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListHarvestJobsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listHarvestJobs,
            inputKey: \ListHarvestJobsRequest.nextToken,
            outputKey: \ListHarvestJobsResponse.nextToken,
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
    public func listHarvestJobsPaginator(
        _ input: ListHarvestJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListHarvestJobsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listHarvestJobs,
            inputKey: \ListHarvestJobsRequest.nextToken,
            outputKey: \ListHarvestJobsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a collection of OriginEndpoint records.
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
    public func listOriginEndpointsPaginator<Result>(
        _ input: ListOriginEndpointsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOriginEndpointsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listOriginEndpoints,
            inputKey: \ListOriginEndpointsRequest.nextToken,
            outputKey: \ListOriginEndpointsResponse.nextToken,
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
    public func listOriginEndpointsPaginator(
        _ input: ListOriginEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOriginEndpointsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listOriginEndpoints,
            inputKey: \ListOriginEndpointsRequest.nextToken,
            outputKey: \ListOriginEndpointsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension MediaPackage.ListChannelsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListChannelsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MediaPackage.ListHarvestJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListHarvestJobsRequest {
        return .init(
            includeChannelId: self.includeChannelId,
            includeStatus: self.includeStatus,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MediaPackage.ListOriginEndpointsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MediaPackage.ListOriginEndpointsRequest {
        return .init(
            channelId: self.channelId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
