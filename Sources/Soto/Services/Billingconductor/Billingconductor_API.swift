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

/// Service object for interacting with AWS Billingconductor service.
///
/// Amazon Web Services Billing Conductor is a fully managed service that you can use to customize a pro forma version of your billing data each month, to accurately show or chargeback your end customers. Amazon Web Services Billing Conductor doesn't change the way you're billed by Amazon Web Services each month by design. Instead, it provides you with a mechanism to configure, generate, and display rates to certain customers over a given billing period. You can also analyze the difference between the rates you apply to your accounting groupings relative to your actual rates from Amazon Web Services. As a result of your Amazon Web Services Billing Conductor configuration, the payer account can also see the custom rate applied on the billing details page of the Amazon Web Services Billing console, or configure a cost and usage report per billing group. This documentation shows how you can configure Amazon Web Services Billing Conductor using its API. For more information about using the Amazon Web Services Billing Conductor user interface, see the  Amazon Web Services Billing Conductor User Guide.
public struct Billingconductor: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Billingconductor client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: nil,
            partition: partition,
            service: "billingconductor",
            serviceProtocol: .restjson,
            apiVersion: "2021-07-30",
            endpoint: endpoint,
            serviceEndpoints: [
                "aws-global": "billingconductor.us-east-1.amazonaws.com"
            ],
            partitionEndpoints: [
                .aws: (endpoint: "aws-global", region: .useast1)
            ],
            errorType: BillingconductorErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Connects an array of account IDs in a consolidated billing family to a predefined billing group. The account IDs must be a part of the consolidated billing family during the current month, and not already associated with another billing group. The maximum number of accounts that can be associated in one call is 30.
    public func associateAccounts(_ input: AssociateAccountsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAccountsOutput> {
        return self.client.execute(operation: "AssociateAccounts", path: "/associate-accounts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Connects an array of PricingRuleArns to a defined PricingPlan. The maximum number PricingRuleArn that can be associated in one call is 30.
    public func associatePricingRules(_ input: AssociatePricingRulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociatePricingRulesOutput> {
        return self.client.execute(operation: "AssociatePricingRules", path: "/associate-pricing-rules", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associates a batch of resources to a percentage custom line item.
    public func batchAssociateResourcesToCustomLineItem(_ input: BatchAssociateResourcesToCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAssociateResourcesToCustomLineItemOutput> {
        return self.client.execute(operation: "BatchAssociateResourcesToCustomLineItem", path: "/batch-associate-resources-to-custom-line-item", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Disassociates a batch of resources from a percentage custom line item.
    public func batchDisassociateResourcesFromCustomLineItem(_ input: BatchDisassociateResourcesFromCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDisassociateResourcesFromCustomLineItemOutput> {
        return self.client.execute(operation: "BatchDisassociateResourcesFromCustomLineItem", path: "/batch-disassociate-resources-from-custom-line-item", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a billing group that resembles a consolidated billing family that Amazon Web Services charges, based off of the predefined pricing plan computation.
    public func createBillingGroup(_ input: CreateBillingGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBillingGroupOutput> {
        return self.client.execute(operation: "CreateBillingGroup", path: "/create-billing-group", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a custom line item that can be used to create a one-time fixed charge that can be applied to a single billing group for the current or previous billing period. The one-time fixed charge is either a fee or discount.
    public func createCustomLineItem(_ input: CreateCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomLineItemOutput> {
        return self.client.execute(operation: "CreateCustomLineItem", path: "/create-custom-line-item", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a pricing plan that is used for computing Amazon Web Services charges for billing groups.
    public func createPricingPlan(_ input: CreatePricingPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePricingPlanOutput> {
        return self.client.execute(operation: "CreatePricingPlan", path: "/create-pricing-plan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a pricing rule can be associated to a pricing plan, or a set of pricing plans.
    public func createPricingRule(_ input: CreatePricingRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePricingRuleOutput> {
        return self.client.execute(operation: "CreatePricingRule", path: "/create-pricing-rule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a billing group.
    public func deleteBillingGroup(_ input: DeleteBillingGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBillingGroupOutput> {
        return self.client.execute(operation: "DeleteBillingGroup", path: "/delete-billing-group", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the custom line item identified by the given ARN in the current, or previous billing period.
    public func deleteCustomLineItem(_ input: DeleteCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomLineItemOutput> {
        return self.client.execute(operation: "DeleteCustomLineItem", path: "/delete-custom-line-item", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a pricing plan. The pricing plan must not be associated with any billing groups to delete successfully.
    public func deletePricingPlan(_ input: DeletePricingPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePricingPlanOutput> {
        return self.client.execute(operation: "DeletePricingPlan", path: "/delete-pricing-plan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the pricing rule that's identified by the input Amazon Resource Name (ARN).
    public func deletePricingRule(_ input: DeletePricingRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePricingRuleOutput> {
        return self.client.execute(operation: "DeletePricingRule", path: "/delete-pricing-rule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified list of account IDs from the given billing group.
    public func disassociateAccounts(_ input: DisassociateAccountsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateAccountsOutput> {
        return self.client.execute(operation: "DisassociateAccounts", path: "/disassociate-accounts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Disassociates a list of pricing rules from a pricing plan.
    public func disassociatePricingRules(_ input: DisassociatePricingRulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociatePricingRulesOutput> {
        return self.client.execute(operation: "DisassociatePricingRules", path: "/disassociate-pricing-rules", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  This is a paginated call to list linked accounts that are linked to the payer account for the specified time period. If no information is provided, the current billing period is used. The response will optionally include the billing group that's associated with the linked account.
    public func listAccountAssociations(_ input: ListAccountAssociationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAccountAssociationsOutput> {
        return self.client.execute(operation: "ListAccountAssociations", path: "/list-account-associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated Amazon Web Services charges based on the associated pricing plan of a billing group.
    public func listBillingGroupCostReports(_ input: ListBillingGroupCostReportsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBillingGroupCostReportsOutput> {
        return self.client.execute(operation: "ListBillingGroupCostReports", path: "/list-billing-group-cost-reports", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A paginated call to retrieve a list of billing groups for the given billing period. If you don't provide a billing group, the current billing period is used.
    public func listBillingGroups(_ input: ListBillingGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBillingGroupsOutput> {
        return self.client.execute(operation: "ListBillingGroups", path: "/list-billing-groups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A paginated call to get a list of all custom line item versions.
    public func listCustomLineItemVersions(_ input: ListCustomLineItemVersionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCustomLineItemVersionsOutput> {
        return self.client.execute(operation: "ListCustomLineItemVersions", path: "/list-custom-line-item-versions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  A paginated call to get a list of all custom line items (FFLIs) for the given billing period. If you don't provide a billing period, the current billing period is used.
    public func listCustomLineItems(_ input: ListCustomLineItemsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCustomLineItemsOutput> {
        return self.client.execute(operation: "ListCustomLineItems", path: "/list-custom-line-items", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A paginated call to get pricing plans for the given billing period. If you don't provide a billing period, the current billing period is used.
    public func listPricingPlans(_ input: ListPricingPlansInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPricingPlansOutput> {
        return self.client.execute(operation: "ListPricingPlans", path: "/list-pricing-plans", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  A list of the pricing plans that are associated with a pricing rule.
    public func listPricingPlansAssociatedWithPricingRule(_ input: ListPricingPlansAssociatedWithPricingRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPricingPlansAssociatedWithPricingRuleOutput> {
        return self.client.execute(operation: "ListPricingPlansAssociatedWithPricingRule", path: "/list-pricing-plans-associated-with-pricing-rule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes a pricing rule that can be associated to a pricing plan, or set of pricing plans.
    public func listPricingRules(_ input: ListPricingRulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPricingRulesOutput> {
        return self.client.execute(operation: "ListPricingRules", path: "/list-pricing-rules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists the pricing rules that are associated with a pricing plan.
    public func listPricingRulesAssociatedToPricingPlan(_ input: ListPricingRulesAssociatedToPricingPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPricingRulesAssociatedToPricingPlanOutput> {
        return self.client.execute(operation: "ListPricingRulesAssociatedToPricingPlan", path: "/list-pricing-rules-associated-to-pricing-plan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  List the resources that are associated to a custom line item.
    public func listResourcesAssociatedToCustomLineItem(_ input: ListResourcesAssociatedToCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListResourcesAssociatedToCustomLineItemOutput> {
        return self.client.execute(operation: "ListResourcesAssociatedToCustomLineItem", path: "/list-resources-associated-to-custom-line-item", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  A list the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This updates an existing billing group.
    public func updateBillingGroup(_ input: UpdateBillingGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBillingGroupOutput> {
        return self.client.execute(operation: "UpdateBillingGroup", path: "/update-billing-group", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Update an existing custom line item in the current or previous billing period.
    public func updateCustomLineItem(_ input: UpdateCustomLineItemInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateCustomLineItemOutput> {
        return self.client.execute(operation: "UpdateCustomLineItem", path: "/update-custom-line-item", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This updates an existing pricing plan.
    public func updatePricingPlan(_ input: UpdatePricingPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePricingPlanOutput> {
        return self.client.execute(operation: "UpdatePricingPlan", path: "/update-pricing-plan", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing pricing rule.
    public func updatePricingRule(_ input: UpdatePricingRuleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePricingRuleOutput> {
        return self.client.execute(operation: "UpdatePricingRule", path: "/update-pricing-rule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Billingconductor {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Billingconductor, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
