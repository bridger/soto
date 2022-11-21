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
extension Ivschat {
    // MARK: Async API Calls

    /// Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response. Use the capabilities field to permit an end user to send messages or moderate a room. The attributes field securely attaches structured data to the chat session; the data is included within each message sent by the end user and received by other participants in the room. Common use cases for attributes include passing end-user profile data like an icon, display name, colors, badges, and other display features. Encryption keys are owned by Amazon IVS Chat and never used directly by your application.
    public func createChatToken(_ input: CreateChatTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChatTokenResponse {
        return try await self.client.execute(operation: "CreateChatToken", path: "/CreateChatToken", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a logging configuration that allows clients to store and record sent messages.
    public func createLoggingConfiguration(_ input: CreateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoggingConfigurationResponse {
        return try await self.client.execute(operation: "CreateLoggingConfiguration", path: "/CreateLoggingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a room that allows clients to connect and pass messages.
    public func createRoom(_ input: CreateRoomRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoomResponse {
        return try await self.client.execute(operation: "CreateRoom", path: "/CreateRoom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified logging configuration.
    public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLoggingConfiguration", path: "/DeleteLoggingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s EventName is aws:DELETE_MESSAGE. This replicates the  DeleteMessage WebSocket operation in the Amazon IVS Chat Messaging API.
    public func deleteMessage(_ input: DeleteMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMessageResponse {
        return try await self.client.execute(operation: "DeleteMessage", path: "/DeleteMessage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified room.
    public func deleteRoom(_ input: DeleteRoomRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRoom", path: "/DeleteRoom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects all connections using a specified user ID from a room. This replicates the  DisconnectUser WebSocket operation in the Amazon IVS Chat Messaging API.
    public func disconnectUser(_ input: DisconnectUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisconnectUserResponse {
        return try await self.client.execute(operation: "DisconnectUser", path: "/DisconnectUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the specified logging configuration.
    public func getLoggingConfiguration(_ input: GetLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLoggingConfigurationResponse {
        return try await self.client.execute(operation: "GetLoggingConfiguration", path: "/GetLoggingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the specified room.
    public func getRoom(_ input: GetRoomRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoomResponse {
        return try await self.client.execute(operation: "GetRoom", path: "/GetRoom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about all your logging configurations in the AWS region where the API request is processed.
    public func listLoggingConfigurations(_ input: ListLoggingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLoggingConfigurationsResponse {
        return try await self.client.execute(operation: "ListLoggingConfigurations", path: "/ListLoggingConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets summary information about all your rooms in the AWS region where the API request is processed. Results are sorted in descending order of updateTime.
    public func listRooms(_ input: ListRoomsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRoomsResponse {
        return try await self.client.execute(operation: "ListRooms", path: "/ListRooms", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about AWS tags for the specified ARN.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.
    public func sendEvent(_ input: SendEventRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendEventResponse {
        return try await self.client.execute(operation: "SendEvent", path: "/SendEvent", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates tags for the AWS resource with the specified ARN.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the resource with the specified ARN.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a specified logging configuration.
    public func updateLoggingConfiguration(_ input: UpdateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLoggingConfigurationResponse {
        return try await self.client.execute(operation: "UpdateLoggingConfiguration", path: "/UpdateLoggingConfiguration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a room’s configuration.
    public func updateRoom(_ input: UpdateRoomRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoomResponse {
        return try await self.client.execute(operation: "UpdateRoom", path: "/UpdateRoom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
