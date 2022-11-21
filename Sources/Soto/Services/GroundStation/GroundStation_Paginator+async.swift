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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension GroundStation {
    ///  Returns a list of Config objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigsPaginator(
        _ input: ListConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigsRequest, ListConfigsResponse> {
        return .init(
            input: input,
            command: listConfigs,
            inputKey: \ListConfigsRequest.nextToken,
            outputKey: \ListConfigsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactsPaginator(
        _ input: ListContactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactsRequest, ListContactsResponse> {
        return .init(
            input: input,
            command: listContacts,
            inputKey: \ListContactsRequest.nextToken,
            outputKey: \ListContactsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of DataflowEndpoint groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataflowEndpointGroupsPaginator(
        _ input: ListDataflowEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataflowEndpointGroupsRequest, ListDataflowEndpointGroupsResponse> {
        return .init(
            input: input,
            command: listDataflowEndpointGroups,
            inputKey: \ListDataflowEndpointGroupsRequest.nextToken,
            outputKey: \ListDataflowEndpointGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List existing ephemerides.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEphemeridesPaginator(
        _ input: ListEphemeridesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEphemeridesRequest, ListEphemeridesResponse> {
        return .init(
            input: input,
            command: listEphemerides,
            inputKey: \ListEphemeridesRequest.nextToken,
            outputKey: \ListEphemeridesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of ground stations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroundStationsPaginator(
        _ input: ListGroundStationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroundStationsRequest, ListGroundStationsResponse> {
        return .init(
            input: input,
            command: listGroundStations,
            inputKey: \ListGroundStationsRequest.nextToken,
            outputKey: \ListGroundStationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of mission profiles.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMissionProfilesPaginator(
        _ input: ListMissionProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMissionProfilesRequest, ListMissionProfilesResponse> {
        return .init(
            input: input,
            command: listMissionProfiles,
            inputKey: \ListMissionProfilesRequest.nextToken,
            outputKey: \ListMissionProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of satellites.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSatellitesPaginator(
        _ input: ListSatellitesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSatellitesRequest, ListSatellitesResponse> {
        return .init(
            input: input,
            command: listSatellites,
            inputKey: \ListSatellitesRequest.nextToken,
            outputKey: \ListSatellitesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
