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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension KinesisVideo {
    // MARK: Async API Calls

    /// Creates a signaling channel.   CreateSignalingChannel is an asynchronous operation.
    public func createSignalingChannel(_ input: CreateSignalingChannelInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignalingChannelOutput {
        return try await self.client.execute(operation: "CreateSignalingChannel", path: "/createSignalingChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Kinesis video stream.  When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.   CreateStream is an asynchronous operation. For information about how the service works, see How it Works.  You must have permissions for the KinesisVideo:CreateStream action.
    public func createStream(_ input: CreateStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamOutput {
        return try await self.client.execute(operation: "CreateStream", path: "/createStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.
    public func deleteSignalingChannel(_ input: DeleteSignalingChannelInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSignalingChannelOutput {
        return try await self.client.execute(operation: "DeleteSignalingChannel", path: "/deleteSignalingChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Kinesis video stream and the data contained in the stream.  This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.  To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.  This operation requires permission for the KinesisVideo:DeleteStream action.
    public func deleteStream(_ input: DeleteStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamOutput {
        return try await self.client.execute(operation: "DeleteStream", path: "/deleteStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a stream’s edge configuration that was set using the StartEdgeConfigurationUpdate API.  Use this API to get the status of the configuration if the configuration is in sync with the  Edge Agent.
    public func describeEdgeConfiguration(_ input: DescribeEdgeConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeConfigurationOutput {
        return try await self.client.execute(operation: "DescribeEdgeConfiguration", path: "/describeEdgeConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the ImageGenerationConfiguration for a given Kinesis video stream.
    public func describeImageGenerationConfiguration(_ input: DescribeImageGenerationConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageGenerationConfigurationOutput {
        return try await self.client.execute(operation: "DescribeImageGenerationConfiguration", path: "/describeImageGenerationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the most current information about the stream. Either streamName or streamARN should be provided in the input. Returns the most current information about the stream. The streamName or streamARN should be provided in the input.
    public func describeMappedResourceConfiguration(_ input: DescribeMappedResourceConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMappedResourceConfigurationOutput {
        return try await self.client.execute(operation: "DescribeMappedResourceConfiguration", path: "/describeMappedResourceConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the most current information about the channel. Specify the ChannelName or ChannelARN in the input.
    public func describeMediaStorageConfiguration(_ input: DescribeMediaStorageConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMediaStorageConfigurationOutput {
        return try await self.client.execute(operation: "DescribeMediaStorageConfiguration", path: "/describeMediaStorageConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the NotificationConfiguration for a given Kinesis video stream.
    public func describeNotificationConfiguration(_ input: DescribeNotificationConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationConfigurationOutput {
        return try await self.client.execute(operation: "DescribeNotificationConfiguration", path: "/describeNotificationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.
    public func describeSignalingChannel(_ input: DescribeSignalingChannelInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSignalingChannelOutput {
        return try await self.client.execute(operation: "DescribeSignalingChannel", path: "/describeSignalingChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN.
    public func describeStream(_ input: DescribeStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamOutput {
        return try await self.client.execute(operation: "DescribeStream", path: "/describeStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation).   The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.  In the request, specify the stream either by StreamName or StreamARN.
    public func getDataEndpoint(_ input: GetDataEndpointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDataEndpointOutput {
        return try await self.client.execute(operation: "GetDataEndpoint", path: "/getDataEndpoint", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties.  Protocols is used to determine the communication mechanism. For example, if you specify WSS as the protocol, this API produces a secure websocket endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS endpoint.   Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER.
    public func getSignalingChannelEndpoint(_ input: GetSignalingChannelEndpointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSignalingChannelEndpointOutput {
        return try await self.client.execute(operation: "GetSignalingChannelEndpoint", path: "/getSignalingChannelEndpoint", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
    public func listSignalingChannels(_ input: ListSignalingChannelsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSignalingChannelsOutput {
        return try await self.client.execute(operation: "ListSignalingChannels", path: "/listSignalingChannels", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition.
    public func listStreams(_ input: ListStreamsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStreamsOutput {
        return try await self.client.execute(operation: "ListStreams", path: "/listStreams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags associated with the specified signaling channel.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN.
    public func listTagsForStream(_ input: ListTagsForStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForStreamOutput {
        return try await self.client.execute(operation: "ListTagsForStream", path: "/listTagsForStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// An asynchronous API that updates a stream’s existing edge configuration.  The Kinesis Video Stream will sync the stream’s edge configuration with the Edge Agent IoT Greengrass  component that runs on an IoT Hub Device, setup at your premise. The time to sync can vary and depends on the connectivity of the Hub Device.  The SyncStatus will be updated as the edge configuration is acknowledged,  and synced with the Edge Agent.  If this API is invoked for the first time, a new edge configuration will be created for the stream, and the sync status will be set to SYNCING. You will have to wait for the sync status to reach a terminal state such as: IN_SYNC, or SYNC_FAILED, before using this API again.  If you invoke this API during the syncing process, a ResourceInUseException will be thrown.  The connectivity of the stream’s edge configuration and the Edge Agent will be retried for 15 minutes. After 15 minutes, the status will transition into the SYNC_FAILED state.
    public func startEdgeConfigurationUpdate(_ input: StartEdgeConfigurationUpdateInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEdgeConfigurationUpdateOutput {
        return try await self.client.execute(operation: "StartEdgeConfigurationUpdate", path: "/startEdgeConfigurationUpdate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to Amazon Web Services resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the Billing and Cost Management and Cost Management User Guide.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/TagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to Amazon Web Services resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the Billing and Cost Management and Cost Management User Guide.  You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. A Kinesis video stream can support up to 50 tags.
    public func tagStream(_ input: TagStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagStreamOutput {
        return try await self.client.execute(operation: "TagStream", path: "/tagStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/UntagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.
    public func untagStream(_ input: UntagStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagStreamOutput {
        return try await self.client.execute(operation: "UntagStream", path: "/untagStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN.   The retention period that you specify replaces the current value.  This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.
    public func updateDataRetention(_ input: UpdateDataRetentionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDataRetentionOutput {
        return try await self.client.execute(operation: "UpdateDataRetention", path: "/updateDataRetention", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the StreamInfo and ImageProcessingConfiguration fields.
    public func updateImageGenerationConfiguration(_ input: UpdateImageGenerationConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageGenerationConfigurationOutput {
        return try await self.client.execute(operation: "UpdateImageGenerationConfiguration", path: "/updateImageGenerationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a SignalingChannel to a stream to store the media. There are two signaling modes that  can specified :   If the StorageStatus is disabled, no data will be stored, and the StreamARN parameter will not be needed.    If the StorageStatus is enabled, the data will be stored in the  StreamARN provided.
    public func updateMediaStorageConfiguration(_ input: UpdateMediaStorageConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMediaStorageConfigurationOutput {
        return try await self.client.execute(operation: "UpdateMediaStorageConfiguration", path: "/updateMediaStorageConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the notification information for a stream.
    public func updateNotificationConfiguration(_ input: UpdateNotificationConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNotificationConfigurationOutput {
        return try await self.client.execute(operation: "UpdateNotificationConfiguration", path: "/updateNotificationConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the existing signaling channel. This is an asynchronous operation and takes time to complete.  If the MessageTtlSeconds value is updated (either increased or reduced), it only applies to new messages sent via this channel after it's been updated. Existing messages are still expired as per the previous MessageTtlSeconds value.
    public func updateSignalingChannel(_ input: UpdateSignalingChannelInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSignalingChannelOutput {
        return try await self.client.execute(operation: "UpdateSignalingChannel", path: "/updateSignalingChannel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.   UpdateStream is an asynchronous operation, and takes time to complete.
    public func updateStream(_ input: UpdateStreamInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStreamOutput {
        return try await self.client.execute(operation: "UpdateStream", path: "/updateStream", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension KinesisVideo {
    ///  Returns the most current information about the stream. Either streamName or streamARN should be provided in the input. Returns the most current information about the stream. The streamName or streamARN should be provided in the input.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeMappedResourceConfigurationPaginator(
        _ input: DescribeMappedResourceConfigurationInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeMappedResourceConfigurationInput, DescribeMappedResourceConfigurationOutput> {
        return .init(
            input: input,
            command: self.describeMappedResourceConfiguration,
            inputKey: \DescribeMappedResourceConfigurationInput.nextToken,
            outputKey: \DescribeMappedResourceConfigurationOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSignalingChannelsPaginator(
        _ input: ListSignalingChannelsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSignalingChannelsInput, ListSignalingChannelsOutput> {
        return .init(
            input: input,
            command: self.listSignalingChannels,
            inputKey: \ListSignalingChannelsInput.nextToken,
            outputKey: \ListSignalingChannelsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamsPaginator(
        _ input: ListStreamsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamsInput, ListStreamsOutput> {
        return .init(
            input: input,
            command: self.listStreams,
            inputKey: \ListStreamsInput.nextToken,
            outputKey: \ListStreamsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
