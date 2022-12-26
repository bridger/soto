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
extension ElasticLoadBalancingV2 {
    // MARK: Async API Calls

    /// Adds the specified SSL server certificate to the certificate list for the specified HTTPS or TLS listener. If the certificate in already in the certificate list, the call is successful but the certificate is not added again.  For more information, see HTTPS listeners in the Application Load Balancers Guide or TLS listeners in the Network Load Balancers Guide.
    public func addListenerCertificates(_ input: AddListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddListenerCertificatesOutput {
        return try await self.client.execute(operation: "AddListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified Elastic Load Balancing resource. You can tag your Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, and rules. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, AddTags updates its value.
    public func addTags(_ input: AddTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTagsOutput {
        return try await self.client.execute(operation: "AddTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a listener for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.
    ///  For more information, see the following:    Listeners for your Application Load Balancers     Listeners for your Network Load Balancers     Listeners for your Gateway Load Balancers
    ///  This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple listeners with the same settings, each call succeeds.
    public func createListener(_ input: CreateListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerOutput {
        return try await self.client.execute(operation: "CreateListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.
    ///
    ///  For more information, see the following:    Application Load Balancers     Network Load Balancers     Gateway Load Balancers
    ///  This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple load balancers with the same settings, each call succeeds.
    public func createLoadBalancer(_ input: CreateLoadBalancerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancerOutput {
        return try await self.client.execute(operation: "CreateLoadBalancer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a rule for the specified listener. The listener must be associated with an Application Load Balancer. Each rule consists of a priority, one or more actions, and one or more conditions. Rules are evaluated in priority order, from the lowest value to the highest value. When the conditions for a rule are met, its actions are performed. If the conditions for no rules are met, the actions for the default rule are performed. For more information, see Listener rules in the Application Load Balancers Guide.
    public func createRule(_ input: CreateRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleOutput {
        return try await self.client.execute(operation: "CreateRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a target group.    For more information, see the following:    Target groups for your Application Load Balancers     Target groups for your Network Load Balancers     Target groups for your Gateway Load Balancers
    ///  This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.
    public func createTargetGroup(_ input: CreateTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTargetGroupOutput {
        return try await self.client.execute(operation: "CreateTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified listener. Alternatively, your listener is deleted when you delete the load balancer to which it is attached.
    public func deleteListener(_ input: DeleteListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteListenerOutput {
        return try await self.client.execute(operation: "DeleteListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. Deleting a load balancer also deletes its listeners. You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds. Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLoadBalancerOutput {
        return try await self.client.execute(operation: "DeleteLoadBalancer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified rule. You can't delete the default rule.
    public func deleteRule(_ input: DeleteRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleOutput {
        return try await self.client.execute(operation: "DeleteRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified target group. You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks. Deleting a target group does not affect its registered targets. For example, any EC2 instances continue to run until you stop or terminate them.
    public func deleteTargetGroup(_ input: DeleteTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTargetGroupOutput {
        return try await self.client.execute(operation: "DeleteTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.
    public func deregisterTargets(_ input: DeregisterTargetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterTargetsOutput {
        return try await self.client.execute(operation: "DeregisterTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current Elastic Load Balancing resource limits for your Amazon Web Services account. For more information, see the following:    Quotas for your Application Load Balancers     Quotas for your Network Load Balancers     Quotas for your Gateway Load Balancers
    public func describeAccountLimits(_ input: DescribeAccountLimitsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountLimitsOutput {
        return try await self.client.execute(operation: "DescribeAccountLimits", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the default certificate and the certificate list for the specified HTTPS or TLS listener. If the default certificate is also in the certificate list, it appears twice in the results (once with IsDefault set to true and once with IsDefault set to false). For more information, see SSL certificates in the Application Load Balancers Guide or Server certificates in the Network Load Balancers Guide.
    public func describeListenerCertificates(_ input: DescribeListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerCertificatesOutput {
        return try await self.client.execute(operation: "DescribeListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load balancer or one or more listeners.
    public func describeListeners(_ input: DescribeListenersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenersOutput {
        return try await self.client.execute(operation: "DescribeListeners", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the attributes for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.
    ///  For more information, see the following:    Load balancer attributes in the Application Load Balancers Guide     Load balancer attributes in the Network Load Balancers Guide     Load balancer attributes in the Gateway Load Balancers Guide
    public func describeLoadBalancerAttributes(_ input: DescribeLoadBalancerAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancerAttributesOutput {
        return try await self.client.execute(operation: "DescribeLoadBalancerAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified load balancers or all of your load balancers.
    public func describeLoadBalancers(_ input: DescribeLoadBalancersInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersOutput {
        return try await self.client.execute(operation: "DescribeLoadBalancers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.
    public func describeRules(_ input: DescribeRulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesOutput {
        return try await self.client.execute(operation: "DescribeRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified policies or all policies used for SSL negotiation. For more information, see Security policies in the Application Load Balancers Guide or Security policies in the Network Load Balancers Guide.
    public func describeSSLPolicies(_ input: DescribeSSLPoliciesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSSLPoliciesOutput {
        return try await self.client.execute(operation: "DescribeSSLPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the tags for the specified Elastic Load Balancing resources. You can describe the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
    public func describeTags(_ input: DescribeTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsOutput {
        return try await self.client.execute(operation: "DescribeTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the attributes for the specified target group. For more information, see the following:    Target group attributes in the Application Load Balancers Guide     Target group attributes in the Network Load Balancers Guide     Target group attributes in the Gateway Load Balancers Guide
    public func describeTargetGroupAttributes(_ input: DescribeTargetGroupAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetGroupAttributesOutput {
        return try await self.client.execute(operation: "DescribeTargetGroupAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.
    public func describeTargetGroups(_ input: DescribeTargetGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetGroupsOutput {
        return try await self.client.execute(operation: "DescribeTargetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the health of the specified targets or all of your targets.
    public func describeTargetHealth(_ input: DescribeTargetHealthInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTargetHealthOutput {
        return try await self.client.execute(operation: "DescribeTargetHealth", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Replaces the specified properties of the specified listener. Any properties that you do not specify remain unchanged. Changing the protocol from HTTPS to HTTP, or from TLS to TCP, removes the security policy and default certificate properties. If you change the protocol from HTTP to HTTPS, or from TCP to TLS, you must add the security policy and default certificate properties. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
    public func modifyListener(_ input: ModifyListenerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyListenerOutput {
        return try await self.client.execute(operation: "ModifyListener", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified attributes of the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.
    public func modifyLoadBalancerAttributes(_ input: ModifyLoadBalancerAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLoadBalancerAttributesOutput {
        return try await self.client.execute(operation: "ModifyLoadBalancerAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Replaces the specified properties of the specified rule. Any properties that you do not specify are unchanged. To add an item to a list, remove an item from a list, or update an item in a list, you must provide the entire list. For example, to add an action, specify a list with the current actions plus the new action.
    public func modifyRule(_ input: ModifyRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleOutput {
        return try await self.client.execute(operation: "ModifyRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the health checks used when evaluating the health state of the targets in the specified target group.
    public func modifyTargetGroup(_ input: ModifyTargetGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupOutput {
        return try await self.client.execute(operation: "ModifyTargetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the specified attributes of the specified target group.
    public func modifyTargetGroupAttributes(_ input: ModifyTargetGroupAttributesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetGroupAttributesOutput {
        return try await self.client.execute(operation: "ModifyTargetGroupAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers the specified targets with the specified target group.
    ///  If the target is an EC2 instance, it must be in the running state when you register it.
    ///  By default, the load balancer routes requests to registered targets using the protocol and port for the target group. Alternatively, you can override the port for a target when you register it. You can register each EC2 instance or IP address with the same target group multiple times using different ports.
    ///  With a Network Load Balancer, you cannot register instances by instance ID if they have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register instances of these types by IP address.
    public func registerTargets(_ input: RegisterTargetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterTargetsOutput {
        return try await self.client.execute(operation: "RegisterTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified certificate from the certificate list for the specified HTTPS or TLS listener.
    public func removeListenerCertificates(_ input: RemoveListenerCertificatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveListenerCertificatesOutput {
        return try await self.client.execute(operation: "RemoveListenerCertificates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified Elastic Load Balancing resources. You can remove the tags for one or more Application Load Balancers, Network Load Balancers, Gateway Load Balancers, target groups, listeners, or rules.
    public func removeTags(_ input: RemoveTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveTagsOutput {
        return try await self.client.execute(operation: "RemoveTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the type of IP addresses used by the subnets of the specified load balancer.
    public func setIpAddressType(_ input: SetIpAddressTypeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetIpAddressTypeOutput {
        return try await self.client.execute(operation: "SetIpAddressType", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the priorities of the specified rules. You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.
    public func setRulePriorities(_ input: SetRulePrioritiesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetRulePrioritiesOutput {
        return try await self.client.execute(operation: "SetRulePriorities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified security groups with the specified Application Load Balancer. The specified security groups override the previously associated security groups. You can't specify a security group for a Network Load Balancer or Gateway Load Balancer.
    public func setSecurityGroups(_ input: SetSecurityGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetSecurityGroupsOutput {
        return try await self.client.execute(operation: "SetSecurityGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the Availability Zones for the specified public subnets for the specified Application Load Balancer or Network Load Balancer. The specified subnets replace the previously enabled subnets. When you specify subnets for a Network Load Balancer, you must include all subnets that were enabled previously, with their existing configurations, plus any additional subnets.
    public func setSubnets(_ input: SetSubnetsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetSubnetsOutput {
        return try await self.client.execute(operation: "SetSubnets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ElasticLoadBalancingV2 {
    ///  Describes the specified listeners or the listeners for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer. You must specify either a load balancer or one or more listeners.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeListenersPaginator(
        _ input: DescribeListenersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeListenersInput, DescribeListenersOutput> {
        return .init(
            input: input,
            command: self.describeListeners,
            inputKey: \DescribeListenersInput.marker,
            outputKey: \DescribeListenersOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified load balancers or all of your load balancers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeLoadBalancersPaginator(
        _ input: DescribeLoadBalancersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeLoadBalancersInput, DescribeLoadBalancersOutput> {
        return .init(
            input: input,
            command: self.describeLoadBalancers,
            inputKey: \DescribeLoadBalancersInput.marker,
            outputKey: \DescribeLoadBalancersOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeTargetGroupsPaginator(
        _ input: DescribeTargetGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeTargetGroupsInput, DescribeTargetGroupsOutput> {
        return .init(
            input: input,
            command: self.describeTargetGroups,
            inputKey: \DescribeTargetGroupsInput.marker,
            outputKey: \DescribeTargetGroupsOutput.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ElasticLoadBalancingV2 {
    public func waitUntilLoadBalancerAvailable(
        _ input: DescribeLoadBalancersInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("loadBalancers[].state.code", expected: "active")),
                .init(state: .retry, matcher: try! JMESAnyPathMatcher("loadBalancers[].state.code", expected: "provisioning")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("LoadBalancerNotFound")),
            ],
            minDelayTime: .seconds(15),
            command: self.describeLoadBalancers
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilLoadBalancerExists(
        _ input: DescribeLoadBalancersInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("LoadBalancerNotFound")),
            ],
            minDelayTime: .seconds(15),
            command: self.describeLoadBalancers
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilLoadBalancersDeleted(
        _ input: DescribeLoadBalancersInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .retry, matcher: try! JMESAllPathMatcher("loadBalancers[].state.code", expected: "active")),
                .init(state: .success, matcher: AWSErrorCodeMatcher("LoadBalancerNotFound")),
            ],
            minDelayTime: .seconds(15),
            command: self.describeLoadBalancers
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTargetDeregistered(
        _ input: DescribeTargetHealthInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("InvalidTarget")),
                .init(state: .success, matcher: try! JMESAllPathMatcher("targetHealthDescriptions[].targetHealth.state", expected: "unused")),
            ],
            minDelayTime: .seconds(15),
            command: self.describeTargetHealth
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTargetInService(
        _ input: DescribeTargetHealthInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("targetHealthDescriptions[].targetHealth.state", expected: "healthy")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InvalidInstance")),
            ],
            minDelayTime: .seconds(15),
            command: self.describeTargetHealth
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
