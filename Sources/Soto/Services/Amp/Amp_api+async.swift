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
extension Amp {
    // MARK: Async API Calls

    /// Create an alert manager definition.
    public func createAlertManagerDefinition(_ input: CreateAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertManagerDefinitionResponse {
        return try await self.client.execute(operation: "CreateAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create logging configuration.
    public func createLoggingConfiguration(_ input: CreateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoggingConfigurationResponse {
        return try await self.client.execute(operation: "CreateLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a rule group namespace.
    public func createRuleGroupsNamespace(_ input: CreateRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleGroupsNamespaceResponse {
        return try await self.client.execute(operation: "CreateRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new AMP workspace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceResponse {
        return try await self.client.execute(operation: "CreateWorkspace", path: "/workspaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an alert manager definition.
    public func deleteAlertManagerDefinition(_ input: DeleteAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete logging configuration.
    public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a rule groups namespace.
    public func deleteRuleGroupsNamespace(_ input: DeleteRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AMP workspace.
    public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an alert manager definition.
    public func describeAlertManagerDefinition(_ input: DescribeAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlertManagerDefinitionResponse {
        return try await self.client.execute(operation: "DescribeAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes logging configuration.
    public func describeLoggingConfiguration(_ input: DescribeLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoggingConfigurationResponse {
        return try await self.client.execute(operation: "DescribeLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe a rule groups namespace.
    public func describeRuleGroupsNamespace(_ input: DescribeRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupsNamespaceResponse {
        return try await self.client.execute(operation: "DescribeRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing AMP workspace.
    public func describeWorkspace(_ input: DescribeWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkspaceResponse {
        return try await self.client.execute(operation: "DescribeWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists rule groups namespaces.
    public func listRuleGroupsNamespaces(_ input: ListRuleGroupsNamespacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRuleGroupsNamespacesResponse {
        return try await self.client.execute(operation: "ListRuleGroupsNamespaces", path: "/workspaces/{workspaceId}/rulegroupsnamespaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all AMP workspaces, including workspaces being created or deleted.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkspacesResponse {
        return try await self.client.execute(operation: "ListWorkspaces", path: "/workspaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an alert manager definition.
    public func putAlertManagerDefinition(_ input: PutAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAlertManagerDefinitionResponse {
        return try await self.client.execute(operation: "PutAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a rule groups namespace.
    public func putRuleGroupsNamespace(_ input: PutRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRuleGroupsNamespaceResponse {
        return try await self.client.execute(operation: "PutRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates tags for the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update logging configuration.
    public func updateLoggingConfiguration(_ input: UpdateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLoggingConfigurationResponse {
        return try await self.client.execute(operation: "UpdateLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an AMP workspace alias.
    public func updateWorkspaceAlias(_ input: UpdateWorkspaceAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateWorkspaceAlias", path: "/workspaces/{workspaceId}/alias", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Amp {
    ///  Lists rule groups namespaces.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRuleGroupsNamespacesPaginator(
        _ input: ListRuleGroupsNamespacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRuleGroupsNamespacesRequest, ListRuleGroupsNamespacesResponse> {
        return .init(
            input: input,
            command: self.listRuleGroupsNamespaces,
            inputKey: \ListRuleGroupsNamespacesRequest.nextToken,
            outputKey: \ListRuleGroupsNamespacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all AMP workspaces, including workspaces being created or deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkspacesRequest, ListWorkspacesResponse> {
        return .init(
            input: input,
            command: self.listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Amp {
    public func waitUntilWorkspaceActive(
        _ input: DescribeWorkspaceRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "ACTIVE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "UPDATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "CREATING")),
            ],
            command: self.describeWorkspace
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilWorkspaceDeleted(
        _ input: DescribeWorkspaceRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "DELETING")),
            ],
            command: self.describeWorkspace
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
