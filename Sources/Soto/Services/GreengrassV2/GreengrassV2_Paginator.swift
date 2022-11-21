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

import SotoCore

// MARK: Paginators

extension GreengrassV2 {
    ///  Retrieves a paginated list of client devices that are associated with a core device.
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
    public func listClientDevicesAssociatedWithCoreDevicePaginator<Result>(
        _ input: ListClientDevicesAssociatedWithCoreDeviceRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListClientDevicesAssociatedWithCoreDeviceResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listClientDevicesAssociatedWithCoreDevice,
            inputKey: \ListClientDevicesAssociatedWithCoreDeviceRequest.nextToken,
            outputKey: \ListClientDevicesAssociatedWithCoreDeviceResponse.nextToken,
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
    public func listClientDevicesAssociatedWithCoreDevicePaginator(
        _ input: ListClientDevicesAssociatedWithCoreDeviceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListClientDevicesAssociatedWithCoreDeviceResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listClientDevicesAssociatedWithCoreDevice,
            inputKey: \ListClientDevicesAssociatedWithCoreDeviceRequest.nextToken,
            outputKey: \ListClientDevicesAssociatedWithCoreDeviceResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of all versions for a component. Greater versions are listed first.
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
    public func listComponentVersionsPaginator<Result>(
        _ input: ListComponentVersionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentVersionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponentVersions,
            inputKey: \ListComponentVersionsRequest.nextToken,
            outputKey: \ListComponentVersionsResponse.nextToken,
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
    public func listComponentVersionsPaginator(
        _ input: ListComponentVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentVersionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponentVersions,
            inputKey: \ListComponentVersionsRequest.nextToken,
            outputKey: \ListComponentVersionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of component summaries. This list includes components that you have permission to view.
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
    public func listComponentsPaginator<Result>(
        _ input: ListComponentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListComponentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
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
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of Greengrass core devices.  IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then the reported status of that device might not reflect its current status. The status timestamp indicates when the device status was last updated. Core devices send status updates at the following times:   When the IoT Greengrass Core software starts   When the core device receives a deployment from the Amazon Web Services Cloud   When the status of any component on the core device becomes BROKEN    At a regular interval that you can configure, which defaults to 24 hours   For IoT Greengrass Core v2.7.0, the core device sends status updates upon local deployment and cloud deployment
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
    public func listCoreDevicesPaginator<Result>(
        _ input: ListCoreDevicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCoreDevicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCoreDevices,
            inputKey: \ListCoreDevicesRequest.nextToken,
            outputKey: \ListCoreDevicesResponse.nextToken,
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
    public func listCoreDevicesPaginator(
        _ input: ListCoreDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCoreDevicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCoreDevices,
            inputKey: \ListCoreDevicesRequest.nextToken,
            outputKey: \ListCoreDevicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of deployments.
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
    public func listDeploymentsPaginator<Result>(
        _ input: ListDeploymentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDeploymentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \ListDeploymentsResponse.nextToken,
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
    public func listDeploymentsPaginator(
        _ input: ListDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDeploymentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDeployments,
            inputKey: \ListDeploymentsRequest.nextToken,
            outputKey: \ListDeploymentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of deployment jobs that IoT Greengrass sends to Greengrass core devices.
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
    public func listEffectiveDeploymentsPaginator<Result>(
        _ input: ListEffectiveDeploymentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEffectiveDeploymentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEffectiveDeployments,
            inputKey: \ListEffectiveDeploymentsRequest.nextToken,
            outputKey: \ListEffectiveDeploymentsResponse.nextToken,
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
    public func listEffectiveDeploymentsPaginator(
        _ input: ListEffectiveDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEffectiveDeploymentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEffectiveDeployments,
            inputKey: \ListEffectiveDeploymentsRequest.nextToken,
            outputKey: \ListEffectiveDeploymentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a paginated list of the components that a Greengrass core device runs. By default, this list doesn't include components that are deployed as dependencies of other components. To include dependencies in the response, set the topologyFilter parameter to ALL.  IoT Greengrass relies on individual devices to send status updates to the Amazon Web Services Cloud. If the IoT Greengrass Core software isn't running on the device, or if device isn't connected to the Amazon Web Services Cloud, then the reported status of that device might not reflect its current status. The status timestamp indicates when the device status was last updated. Core devices send status updates at the following times:   When the IoT Greengrass Core software starts   When the core device receives a deployment from the Amazon Web Services Cloud   When the status of any component on the core device becomes BROKEN    At a regular interval that you can configure, which defaults to 24 hours   For IoT Greengrass Core v2.7.0, the core device sends status updates upon local deployment and cloud deployment
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
    public func listInstalledComponentsPaginator<Result>(
        _ input: ListInstalledComponentsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInstalledComponentsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInstalledComponents,
            inputKey: \ListInstalledComponentsRequest.nextToken,
            outputKey: \ListInstalledComponentsResponse.nextToken,
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
    public func listInstalledComponentsPaginator(
        _ input: ListInstalledComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInstalledComponentsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInstalledComponents,
            inputKey: \ListInstalledComponentsRequest.nextToken,
            outputKey: \ListInstalledComponentsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension GreengrassV2.ListClientDevicesAssociatedWithCoreDeviceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListClientDevicesAssociatedWithCoreDeviceRequest {
        return .init(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GreengrassV2.ListComponentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListComponentVersionsRequest {
        return .init(
            arn: self.arn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GreengrassV2.ListComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListComponentsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            scope: self.scope
        )
    }
}

extension GreengrassV2.ListCoreDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListCoreDevicesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status,
            thingGroupArn: self.thingGroupArn
        )
    }
}

extension GreengrassV2.ListDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListDeploymentsRequest {
        return .init(
            historyFilter: self.historyFilter,
            maxResults: self.maxResults,
            nextToken: token,
            parentTargetArn: self.parentTargetArn,
            targetArn: self.targetArn
        )
    }
}

extension GreengrassV2.ListEffectiveDeploymentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListEffectiveDeploymentsRequest {
        return .init(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GreengrassV2.ListInstalledComponentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GreengrassV2.ListInstalledComponentsRequest {
        return .init(
            coreDeviceThingName: self.coreDeviceThingName,
            maxResults: self.maxResults,
            nextToken: token,
            topologyFilter: self.topologyFilter
        )
    }
}
