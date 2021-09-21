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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5)

import SotoCore

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension OpsWorks {
    public func waitUntilAppExists(
        _ input: DescribeAppsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .failure, matcher: AWSErrorStatusMatcher(400)),
            ],
            minDelayTime: .seconds(1),
            command: describeApps
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDeploymentSuccessful(
        _ input: DescribeDeploymentsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("deployments[].status", expected: "successful")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("deployments[].status", expected: "failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeDeployments
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceOnline(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instances[].status", expected: "online")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "setup_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "shutting_down")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "start_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stopping")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "terminating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "terminated")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stop_failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceRegistered(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instances[].status", expected: "registered")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "setup_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "shutting_down")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stopping")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "terminating")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "terminated")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stop_failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceStopped(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instances[].status", expected: "stopped")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "booting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "pending")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "requested")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "running_setup")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "setup_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "start_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "stop_failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilInstanceTerminated(
        _ input: DescribeInstancesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("instances[].status", expected: "terminated")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "booting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "online")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "pending")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "rebooting")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "requested")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "running_setup")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "setup_failed")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("instances[].status", expected: "start_failed")),
            ],
            minDelayTime: .seconds(15),
            command: describeInstances
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5)