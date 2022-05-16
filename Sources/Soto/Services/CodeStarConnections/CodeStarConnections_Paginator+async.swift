//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
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
extension CodeStarConnections {
    ///  Lists the connections associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectionsPaginator(
        _ input: ListConnectionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectionsInput, ListConnectionsOutput> {
        return .init(
            input: input,
            command: listConnections,
            inputKey: \ListConnectionsInput.nextToken,
            outputKey: \ListConnectionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the hosts associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHostsPaginator(
        _ input: ListHostsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHostsInput, ListHostsOutput> {
        return .init(
            input: input,
            command: listHosts,
            inputKey: \ListHostsInput.nextToken,
            outputKey: \ListHostsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)