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

/// Service object for interacting with AWS Outposts service.
///
/// Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools to customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts enables customers to build and run applications on premises using the same programming interfaces as in Amazon Web Services Regions, while using local compute and storage resources for lower latency and local data processing needs.
public struct Outposts: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Outposts client
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
            service: "outposts",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-03",
            endpoint: endpoint,
            serviceEndpoints: [
                "fips-ca-central-1": "outposts-fips.ca-central-1.amazonaws.com",
                "fips-us-east-1": "outposts-fips.us-east-1.amazonaws.com",
                "fips-us-east-2": "outposts-fips.us-east-2.amazonaws.com",
                "fips-us-west-1": "outposts-fips.us-west-1.amazonaws.com",
                "fips-us-west-2": "outposts-fips.us-west-2.amazonaws.com",
                "us-gov-east-1": "outposts.us-gov-east-1.amazonaws.com",
                "us-gov-west-1": "outposts.us-gov-west-1.amazonaws.com"
            ],
            errorType: OutpostsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Cancels the specified order for an Outpost.
    public func cancelOrder(_ input: CancelOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelOrderOutput> {
        return self.client.execute(operation: "CancelOrder", path: "/orders/{OrderId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an order for an Outpost.
    public func createOrder(_ input: CreateOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrderOutput> {
        return self.client.execute(operation: "CreateOrder", path: "/orders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Outpost. You can specify either an Availability one or an AZ ID.
    public func createOutpost(_ input: CreateOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOutpostOutput> {
        return self.client.execute(operation: "CreateOutpost", path: "/outposts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a site for an Outpost.
    public func createSite(_ input: CreateSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSiteOutput> {
        return self.client.execute(operation: "CreateSite", path: "/sites", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified Outpost.
    public func deleteOutpost(_ input: DeleteOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOutpostOutput> {
        return self.client.execute(operation: "DeleteOutpost", path: "/outposts/{OutpostId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified site.
    public func deleteSite(_ input: DeleteSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSiteOutput> {
        return self.client.execute(operation: "DeleteSite", path: "/sites/{SiteId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified catalog item.
    public func getCatalogItem(_ input: GetCatalogItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCatalogItemOutput> {
        return self.client.execute(operation: "GetCatalogItem", path: "/catalog/item/{CatalogItemId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Amazon Web Services uses this action to install Outpost servers.   Gets information about the specified connection.   Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For  more information, see  Amazon Web Services managed policies for Amazon Web Services Outposts and  Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail in the Amazon Web Services Outposts User Guide.
    public func getConnection(_ input: GetConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectionResponse> {
        return self.client.execute(operation: "GetConnection", path: "/connections/{ConnectionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified order.
    public func getOrder(_ input: GetOrderInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOrderOutput> {
        return self.client.execute(operation: "GetOrder", path: "/orders/{OrderId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified Outpost.
    public func getOutpost(_ input: GetOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOutpostOutput> {
        return self.client.execute(operation: "GetOutpost", path: "/outposts/{OutpostId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the instance types for the specified Outpost.
    public func getOutpostInstanceTypes(_ input: GetOutpostInstanceTypesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOutpostInstanceTypesOutput> {
        return self.client.execute(operation: "GetOutpostInstanceTypes", path: "/outposts/{OutpostId}/instanceTypes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified Outpost site.
    public func getSite(_ input: GetSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSiteOutput> {
        return self.client.execute(operation: "GetSite", path: "/sites/{SiteId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets the site address of the specified site.
    public func getSiteAddress(_ input: GetSiteAddressInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSiteAddressOutput> {
        return self.client.execute(operation: "GetSiteAddress", path: "/sites/{SiteId}/address", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the hardware assets for the specified Outpost. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
    public func listAssets(_ input: ListAssetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAssetsOutput> {
        return self.client.execute(operation: "ListAssets", path: "/outposts/{OutpostIdentifier}/assets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the items in the catalog. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
    public func listCatalogItems(_ input: ListCatalogItemsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCatalogItemsOutput> {
        return self.client.execute(operation: "ListCatalogItems", path: "/catalog/items", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Outpost orders for your Amazon Web Services account.
    public func listOrders(_ input: ListOrdersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrdersOutput> {
        return self.client.execute(operation: "ListOrders", path: "/list-orders", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Outposts for your Amazon Web Services account. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
    public func listOutposts(_ input: ListOutpostsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOutpostsOutput> {
        return self.client.execute(operation: "ListOutposts", path: "/outposts", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Outpost sites for your Amazon Web Services account. Use filters to return specific results. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
    public func listSites(_ input: ListSitesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSitesOutput> {
        return self.client.execute(operation: "ListSites", path: "/sites", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Amazon Web Services uses this action to install Outpost servers.   Starts the connection required for Outpost server installation.    Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For  more information, see  Amazon Web Services managed policies for Amazon Web Services Outposts and  Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail in the Amazon Web Services Outposts User Guide.
    public func startConnection(_ input: StartConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartConnectionResponse> {
        return self.client.execute(operation: "StartConnection", path: "/connections", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an Outpost.
    public func updateOutpost(_ input: UpdateOutpostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOutpostOutput> {
        return self.client.execute(operation: "UpdateOutpost", path: "/outposts/{OutpostId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified site.
    public func updateSite(_ input: UpdateSiteInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteOutput> {
        return self.client.execute(operation: "UpdateSite", path: "/sites/{SiteId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the address of the specified site. You can't update a site address if there is an order in progress. You must wait for the order  to complete or cancel the order. You can update the operating address before you place an order at the  site, or after all Outposts that belong to the site have been deactivated.
    public func updateSiteAddress(_ input: UpdateSiteAddressInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteAddressOutput> {
        return self.client.execute(operation: "UpdateSiteAddress", path: "/sites/{SiteId}/address", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the physical and logistical details for a rack at a site. For more information about hardware requirements for racks, see Network  readiness checklist in the Amazon Web Services Outposts User Guide.  To update a rack at a site with an order of IN_PROGRESS, you must wait for the order to complete or cancel the order.
    public func updateSiteRackPhysicalProperties(_ input: UpdateSiteRackPhysicalPropertiesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteRackPhysicalPropertiesOutput> {
        return self.client.execute(operation: "UpdateSiteRackPhysicalProperties", path: "/sites/{SiteId}/rackPhysicalProperties", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Outposts {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Outposts, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension Outposts {
    ///  Gets the instance types for the specified Outpost.
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
    public func getOutpostInstanceTypesPaginator<Result>(
        _ input: GetOutpostInstanceTypesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetOutpostInstanceTypesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getOutpostInstanceTypes,
            inputKey: \GetOutpostInstanceTypesInput.nextToken,
            outputKey: \GetOutpostInstanceTypesOutput.nextToken,
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
    public func getOutpostInstanceTypesPaginator(
        _ input: GetOutpostInstanceTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetOutpostInstanceTypesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getOutpostInstanceTypes,
            inputKey: \GetOutpostInstanceTypesInput.nextToken,
            outputKey: \GetOutpostInstanceTypesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the hardware assets for the specified Outpost. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
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
    public func listAssetsPaginator<Result>(
        _ input: ListAssetsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAssetsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listAssets,
            inputKey: \ListAssetsInput.nextToken,
            outputKey: \ListAssetsOutput.nextToken,
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
    public func listAssetsPaginator(
        _ input: ListAssetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAssetsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listAssets,
            inputKey: \ListAssetsInput.nextToken,
            outputKey: \ListAssetsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the items in the catalog. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
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
    public func listCatalogItemsPaginator<Result>(
        _ input: ListCatalogItemsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCatalogItemsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listCatalogItems,
            inputKey: \ListCatalogItemsInput.nextToken,
            outputKey: \ListCatalogItemsOutput.nextToken,
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
    public func listCatalogItemsPaginator(
        _ input: ListCatalogItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCatalogItemsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listCatalogItems,
            inputKey: \ListCatalogItemsInput.nextToken,
            outputKey: \ListCatalogItemsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Outpost orders for your Amazon Web Services account.
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
    public func listOrdersPaginator<Result>(
        _ input: ListOrdersInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOrdersOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listOrders,
            inputKey: \ListOrdersInput.nextToken,
            outputKey: \ListOrdersOutput.nextToken,
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
    public func listOrdersPaginator(
        _ input: ListOrdersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOrdersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listOrders,
            inputKey: \ListOrdersInput.nextToken,
            outputKey: \ListOrdersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Outposts for your Amazon Web Services account. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
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
    public func listOutpostsPaginator<Result>(
        _ input: ListOutpostsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOutpostsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
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
    public func listOutpostsPaginator(
        _ input: ListOutpostsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOutpostsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listOutposts,
            inputKey: \ListOutpostsInput.nextToken,
            outputKey: \ListOutpostsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Outpost sites for your Amazon Web Services account. Use filters to return specific results. Use filters to return specific results. If you specify multiple filters, the results include only the resources that match  all of the specified filters. For a filter where you can specify multiple values, the results include  items that match any of the values that you specify for the filter.
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
    public func listSitesPaginator<Result>(
        _ input: ListSitesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSitesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
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
    public func listSitesPaginator(
        _ input: ListSitesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSitesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSites,
            inputKey: \ListSitesInput.nextToken,
            outputKey: \ListSitesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Outposts.GetOutpostInstanceTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.GetOutpostInstanceTypesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )
    }
}

extension Outposts.ListAssetsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListAssetsInput {
        return .init(
            hostIdFilter: self.hostIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifier: self.outpostIdentifier,
            statusFilter: self.statusFilter
        )
    }
}

extension Outposts.ListCatalogItemsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListCatalogItemsInput {
        return .init(
            ec2FamilyFilter: self.ec2FamilyFilter,
            itemClassFilter: self.itemClassFilter,
            maxResults: self.maxResults,
            nextToken: token,
            supportedStorageFilter: self.supportedStorageFilter
        )
    }
}

extension Outposts.ListOrdersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListOrdersInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifierFilter: self.outpostIdentifierFilter
        )
    }
}

extension Outposts.ListOutpostsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListOutpostsInput {
        return .init(
            availabilityZoneFilter: self.availabilityZoneFilter,
            availabilityZoneIdFilter: self.availabilityZoneIdFilter,
            lifeCycleStatusFilter: self.lifeCycleStatusFilter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Outposts.ListSitesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Outposts.ListSitesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            operatingAddressCityFilter: self.operatingAddressCityFilter,
            operatingAddressCountryCodeFilter: self.operatingAddressCountryCodeFilter,
            operatingAddressStateOrRegionFilter: self.operatingAddressStateOrRegionFilter
        )
    }
}
