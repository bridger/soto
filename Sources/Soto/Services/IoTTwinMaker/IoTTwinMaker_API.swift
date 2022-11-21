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

/// Service object for interacting with AWS IoTTwinMaker service.
///
/// IoT TwinMaker is a service that enables you to build operational digital twins of physical systems. IoT TwinMaker overlays measurements and analysis from real-world sensors, cameras, and enterprise applications so you can create data visualizations to monitor your physical factory, building, or industrial plant. You can use this real-world data to monitor operations and diagnose and repair errors.
public struct IoTTwinMaker: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoTTwinMaker client
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
            service: "iottwinmaker",
            serviceProtocol: .restjson,
            apiVersion: "2021-11-29",
            endpoint: endpoint,
            errorType: IoTTwinMakerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Sets values for multiple time series properties.
    public func batchPutPropertyValues(_ input: BatchPutPropertyValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutPropertyValuesResponse> {
        return self.client.execute(operation: "BatchPutPropertyValues", path: "/workspaces/{workspaceId}/entity-properties", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Creates a component type.
    public func createComponentType(_ input: CreateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComponentTypeResponse> {
        return self.client.execute(operation: "CreateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates an entity.
    public func createEntity(_ input: CreateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEntityResponse> {
        return self.client.execute(operation: "CreateEntity", path: "/workspaces/{workspaceId}/entities", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a scene.
    public func createScene(_ input: CreateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSceneResponse> {
        return self.client.execute(operation: "CreateScene", path: "/workspaces/{workspaceId}/scenes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a workplace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceResponse> {
        return self.client.execute(operation: "CreateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a component type.
    public func deleteComponentType(_ input: DeleteComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteComponentTypeResponse> {
        return self.client.execute(operation: "DeleteComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes an entity.
    public func deleteEntity(_ input: DeleteEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEntityResponse> {
        return self.client.execute(operation: "DeleteEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a scene.
    public func deleteScene(_ input: DeleteSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSceneResponse> {
        return self.client.execute(operation: "DeleteScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWorkspaceResponse> {
        return self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Run queries to access information from your knowledge graph of entities within individual workspaces.
    public func executeQuery(_ input: ExecuteQueryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExecuteQueryResponse> {
        return self.client.execute(operation: "ExecuteQuery", path: "/queries/execution", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a component type.
    public func getComponentType(_ input: GetComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetComponentTypeResponse> {
        return self.client.execute(operation: "GetComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an entity.
    public func getEntity(_ input: GetEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEntityResponse> {
        return self.client.execute(operation: "GetEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the pricing plan.
    public func getPricingPlan(_ input: GetPricingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPricingPlanResponse> {
        return self.client.execute(operation: "GetPricingPlan", path: "/pricingplan", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets the property values for a component, component type, entity, or workspace. You must specify a value for either componentName, componentTypeId, entityId, or workspaceId.
    public func getPropertyValue(_ input: GetPropertyValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPropertyValueResponse> {
        return self.client.execute(operation: "GetPropertyValue", path: "/workspaces/{workspaceId}/entity-properties/value", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about the history of a time series property value for a component, component type, entity, or workspace. You must specify a value for workspaceId. For entity-specific queries, specify values for componentName and  entityId. For cross-entity quries, specify a value for componentTypeId.
    public func getPropertyValueHistory(_ input: GetPropertyValueHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPropertyValueHistoryResponse> {
        return self.client.execute(operation: "GetPropertyValueHistory", path: "/workspaces/{workspaceId}/entity-properties/history", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a scene.
    public func getScene(_ input: GetSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSceneResponse> {
        return self.client.execute(operation: "GetScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a workspace.
    public func getWorkspace(_ input: GetWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWorkspaceResponse> {
        return self.client.execute(operation: "GetWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all component types in a workspace.
    public func listComponentTypes(_ input: ListComponentTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListComponentTypesResponse> {
        return self.client.execute(operation: "ListComponentTypes", path: "/workspaces/{workspaceId}/component-types-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all entities in a workspace.
    public func listEntities(_ input: ListEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListEntitiesResponse> {
        return self.client.execute(operation: "ListEntities", path: "/workspaces/{workspaceId}/entities-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all scenes in a workspace.
    public func listScenes(_ input: ListScenesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListScenesResponse> {
        return self.client.execute(operation: "ListScenes", path: "/workspaces/{workspaceId}/scenes-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about workspaces in the current account.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkspacesResponse> {
        return self.client.execute(operation: "ListWorkspaces", path: "/workspaces-list", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates information in a component type.
    public func updateComponentType(_ input: UpdateComponentTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateComponentTypeResponse> {
        return self.client.execute(operation: "UpdateComponentType", path: "/workspaces/{workspaceId}/component-types/{componentTypeId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an entity.
    public func updateEntity(_ input: UpdateEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEntityResponse> {
        return self.client.execute(operation: "UpdateEntity", path: "/workspaces/{workspaceId}/entities/{entityId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Update the pricing plan.
    public func updatePricingPlan(_ input: UpdatePricingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePricingPlanResponse> {
        return self.client.execute(operation: "UpdatePricingPlan", path: "/pricingplan", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a scene.
    public func updateScene(_ input: UpdateSceneRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSceneResponse> {
        return self.client.execute(operation: "UpdateScene", path: "/workspaces/{workspaceId}/scenes/{sceneId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a workspace.
    public func updateWorkspace(_ input: UpdateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkspaceResponse> {
        return self.client.execute(operation: "UpdateWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }
}

extension IoTTwinMaker {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: IoTTwinMaker, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
