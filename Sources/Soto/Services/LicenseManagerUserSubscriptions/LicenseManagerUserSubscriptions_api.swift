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

/// Service object for interacting with AWS LicenseManagerUserSubscriptions service.
///
/// With License Manager, you can create user-based subscriptions to utilize licensed software with a per user subscription fee on Amazon EC2 instances.
public struct LicenseManagerUserSubscriptions: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the LicenseManagerUserSubscriptions client
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
            service: "license-manager-user-subscriptions",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            serviceEndpoints: [
                "fips-us-east-1": "license-manager-user-subscriptions-fips.us-east-1.amazonaws.com",
                "fips-us-east-2": "license-manager-user-subscriptions-fips.us-east-2.amazonaws.com",
                "fips-us-west-1": "license-manager-user-subscriptions-fips.us-west-1.amazonaws.com",
                "fips-us-west-2": "license-manager-user-subscriptions-fips.us-west-2.amazonaws.com"
            ],
            errorType: LicenseManagerUserSubscriptionsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates the user to an EC2 instance to utilize user-based subscriptions.
    public func associateUser(_ input: AssociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateUserResponse> {
        return self.client.execute(operation: "AssociateUser", path: "/user/AssociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the identity provider from providing user-based subscriptions.
    public func deregisterIdentityProvider(_ input: DeregisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterIdentityProviderResponse> {
        return self.client.execute(operation: "DeregisterIdentityProvider", path: "/identity-provider/DeregisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the user from an EC2 instance providing user-based subscriptions.
    public func disassociateUser(_ input: DisassociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateUserResponse> {
        return self.client.execute(operation: "DisassociateUser", path: "/user/DisassociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the identity providers for user-based subscriptions.
    public func listIdentityProviders(_ input: ListIdentityProvidersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIdentityProvidersResponse> {
        return self.client.execute(operation: "ListIdentityProviders", path: "/identity-provider/ListIdentityProviders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the EC2 instances providing user-based subscriptions.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInstancesResponse> {
        return self.client.execute(operation: "ListInstances", path: "/instance/ListInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the user-based subscription products available from an identity provider.
    public func listProductSubscriptions(_ input: ListProductSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProductSubscriptionsResponse> {
        return self.client.execute(operation: "ListProductSubscriptions", path: "/user/ListProductSubscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists user associations for an identity provider.
    public func listUserAssociations(_ input: ListUserAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserAssociationsResponse> {
        return self.client.execute(operation: "ListUserAssociations", path: "/user/ListUserAssociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers an identity provider for user-based subscriptions.
    public func registerIdentityProvider(_ input: RegisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterIdentityProviderResponse> {
        return self.client.execute(operation: "RegisterIdentityProvider", path: "/identity-provider/RegisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a product subscription for a user with the specified identity provider.
    public func startProductSubscription(_ input: StartProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartProductSubscriptionResponse> {
        return self.client.execute(operation: "StartProductSubscription", path: "/user/StartProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a product subscription for a user with the specified identity provider.
    public func stopProductSubscription(_ input: StopProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopProductSubscriptionResponse> {
        return self.client.execute(operation: "StopProductSubscription", path: "/user/StopProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension LicenseManagerUserSubscriptions {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: LicenseManagerUserSubscriptions, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension LicenseManagerUserSubscriptions {
    ///  Lists the identity providers for user-based subscriptions.
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
    public func listIdentityProvidersPaginator<Result>(
        _ input: ListIdentityProvidersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListIdentityProvidersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
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
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIdentityProvidersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the EC2 instances providing user-based subscriptions.
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
    public func listInstancesPaginator<Result>(
        _ input: ListInstancesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInstancesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
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
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInstancesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the user-based subscription products available from an identity provider.
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
    public func listProductSubscriptionsPaginator<Result>(
        _ input: ListProductSubscriptionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProductSubscriptionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listProductSubscriptions,
            inputKey: \ListProductSubscriptionsRequest.nextToken,
            outputKey: \ListProductSubscriptionsResponse.nextToken,
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
    public func listProductSubscriptionsPaginator(
        _ input: ListProductSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProductSubscriptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listProductSubscriptions,
            inputKey: \ListProductSubscriptionsRequest.nextToken,
            outputKey: \ListProductSubscriptionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists user associations for an identity provider.
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
    public func listUserAssociationsPaginator<Result>(
        _ input: ListUserAssociationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListUserAssociationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listUserAssociations,
            inputKey: \ListUserAssociationsRequest.nextToken,
            outputKey: \ListUserAssociationsResponse.nextToken,
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
    public func listUserAssociationsPaginator(
        _ input: ListUserAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUserAssociationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listUserAssociations,
            inputKey: \ListUserAssociationsRequest.nextToken,
            outputKey: \ListUserAssociationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension LicenseManagerUserSubscriptions.ListIdentityProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListIdentityProvidersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LicenseManagerUserSubscriptions.ListInstancesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListInstancesRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension LicenseManagerUserSubscriptions.ListProductSubscriptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListProductSubscriptionsRequest {
        return .init(
            filters: self.filters,
            identityProvider: self.identityProvider,
            maxResults: self.maxResults,
            nextToken: token,
            product: self.product
        )
    }
}

extension LicenseManagerUserSubscriptions.ListUserAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LicenseManagerUserSubscriptions.ListUserAssociationsRequest {
        return .init(
            filters: self.filters,
            identityProvider: self.identityProvider,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
