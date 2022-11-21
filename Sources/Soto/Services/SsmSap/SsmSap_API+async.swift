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
extension SsmSap {
    // MARK: Async API Calls

    /// Removes permissions associated with the target database.
    public func deleteResourcePermission(_ input: DeleteResourcePermissionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePermissionOutput {
        return try await self.client.execute(operation: "DeleteResourcePermission", path: "/delete-resource-permission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregister an SAP application with AWS Systems Manager for SAP. This action does not aﬀect the existing setup of your SAP workloads on Amazon EC2.
    public func deregisterApplication(_ input: DeregisterApplicationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterApplicationOutput {
        return try await self.client.execute(operation: "DeregisterApplication", path: "/deregister-application", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets an application registered with AWS Systems Manager for SAP. It also returns the components of the application.
    public func getApplication(_ input: GetApplicationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetApplicationOutput {
        return try await self.client.execute(operation: "GetApplication", path: "/get-application", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the component of an application registered with AWS Systems Manager for SAP.
    public func getComponent(_ input: GetComponentInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentOutput {
        return try await self.client.execute(operation: "GetComponent", path: "/get-component", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the SAP HANA database of an application registered with AWS Systems Manager for SAP.
    public func getDatabase(_ input: GetDatabaseInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatabaseOutput {
        return try await self.client.execute(operation: "GetDatabase", path: "/get-database", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details of an operation by specifying the operation ID.
    public func getOperation(_ input: GetOperationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOperationOutput {
        return try await self.client.execute(operation: "GetOperation", path: "/get-operation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets permissions associated with the target database.
    public func getResourcePermission(_ input: GetResourcePermissionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePermissionOutput {
        return try await self.client.execute(operation: "GetResourcePermission", path: "/get-resource-permission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the applications registered with AWS Systems Manager for SAP.
    public func listApplications(_ input: ListApplicationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsOutput {
        return try await self.client.execute(operation: "ListApplications", path: "/list-applications", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the components registered with AWS Systems Manager for SAP.
    public func listComponents(_ input: ListComponentsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsOutput {
        return try await self.client.execute(operation: "ListComponents", path: "/list-components", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the SAP HANA databases of an application registered with AWS Systems Manager for SAP.
    public func listDatabases(_ input: ListDatabasesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatabasesOutput {
        return try await self.client.execute(operation: "ListDatabases", path: "/list-databases", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags on an SAP HANA application and/or database registered with AWS Systems Manager for SAP.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds permissions to the target database.
    public func putResourcePermission(_ input: PutResourcePermissionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePermissionOutput {
        return try await self.client.execute(operation: "PutResourcePermission", path: "/put-resource-permission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Register an SAP application with AWS Systems Manager for SAP. You must meet the following requirements before registering.  The SAP application you want to register with AWS Systems Manager for SAP is running on Amazon EC2. AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the required IAM permissions. Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets Manager to manage SAP applications and components.
    public func registerApplication(_ input: RegisterApplicationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterApplicationOutput {
        return try await self.client.execute(operation: "RegisterApplication", path: "/register-application", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates tag for a resource by specifying the ARN.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the tags for a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func updateApplicationSettings(_ input: UpdateApplicationSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApplicationSettingsOutput {
        return try await self.client.execute(operation: "UpdateApplicationSettings", path: "/update-application-settings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
