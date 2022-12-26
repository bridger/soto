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
extension PinpointEmail {
    // MARK: Async API Calls

    /// Create a configuration set. Configuration sets are groups of rules that you can apply to the emails you send using Amazon Pinpoint. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func createConfigurationSet(_ input: CreateConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigurationSetResponse {
        return try await self.client.execute(operation: "CreateConfigurationSet", path: "/v1/email/configuration-sets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage. A single configuration set can include more than one event destination.
    public func createConfigurationSetEventDestination(_ input: CreateConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConfigurationSetEventDestinationResponse {
        return try await self.client.execute(operation: "CreateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new pool of dedicated IP addresses. A pool can include one or more dedicated IP addresses that are associated with your Amazon Pinpoint account. You can associate a pool with a configuration set. When you send an email that uses that configuration set, Amazon Pinpoint sends it using only the IP addresses in the associated pool.
    public func createDedicatedIpPool(_ input: CreateDedicatedIpPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDedicatedIpPoolResponse {
        return try await self.client.execute(operation: "CreateDedicatedIpPool", path: "/v1/email/dedicated-ip-pools", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new predictive inbox placement test. Predictive inbox placement tests can help you predict how your messages will be handled by various email providers around the world. When you perform a predictive inbox placement test, you provide a sample message that contains the content that you plan to send to your customers. Amazon Pinpoint then sends that message to special email addresses spread across several major email providers. After about 24 hours, the test is complete, and you can use the GetDeliverabilityTestReport operation to view the results of the test.
    public func createDeliverabilityTestReport(_ input: CreateDeliverabilityTestReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeliverabilityTestReportResponse {
        return try await self.client.execute(operation: "CreateDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Verifies an email identity for use with Amazon Pinpoint. In Amazon Pinpoint, an identity is an email address or domain that you use when you send email. Before you can use an identity to send email with Amazon Pinpoint, you first have to verify it. By verifying an address, you demonstrate that you're the owner of the address, and that you've given Amazon Pinpoint permission to send email from the address. When you verify an email address, Amazon Pinpoint sends an email to the address. Your email address is verified as soon as you follow the link in the verification email.   When you verify a domain, this operation provides a set of DKIM tokens, which you can convert into CNAME tokens. You add these CNAME tokens to the DNS configuration for your domain. Your domain is verified when Amazon Pinpoint detects these records in the DNS configuration for your domain. It usually takes around 72 hours to complete the domain verification process.
    public func createEmailIdentity(_ input: CreateEmailIdentityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmailIdentityResponse {
        return try await self.client.execute(operation: "CreateEmailIdentity", path: "/v1/email/identities", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an existing configuration set. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func deleteConfigurationSet(_ input: DeleteConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigurationSetResponse {
        return try await self.client.execute(operation: "DeleteConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an event destination. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func deleteConfigurationSetEventDestination(_ input: DeleteConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigurationSetEventDestinationResponse {
        return try await self.client.execute(operation: "DeleteConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a dedicated IP pool.
    public func deleteDedicatedIpPool(_ input: DeleteDedicatedIpPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDedicatedIpPoolResponse {
        return try await self.client.execute(operation: "DeleteDedicatedIpPool", path: "/v1/email/dedicated-ip-pools/{PoolName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an email identity that you previously verified for use with Amazon Pinpoint. An identity can be either an email address or a domain name.
    public func deleteEmailIdentity(_ input: DeleteEmailIdentityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailIdentityResponse {
        return try await self.client.execute(operation: "DeleteEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region.
    public func getAccount(_ input: GetAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccountResponse {
        return try await self.client.execute(operation: "GetAccount", path: "/v1/email/account", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of the blacklists that your dedicated IP addresses appear on.
    public func getBlacklistReports(_ input: GetBlacklistReportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBlacklistReportsResponse {
        return try await self.client.execute(operation: "GetBlacklistReports", path: "/v1/email/deliverability-dashboard/blacklist-report", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func getConfigurationSet(_ input: GetConfigurationSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConfigurationSetResponse {
        return try await self.client.execute(operation: "GetConfigurationSet", path: "/v1/email/configuration-sets/{ConfigurationSetName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of event destinations that are associated with a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func getConfigurationSetEventDestinations(_ input: GetConfigurationSetEventDestinationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConfigurationSetEventDestinationsResponse {
        return try await self.client.execute(operation: "GetConfigurationSetEventDestinations", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address.
    public func getDedicatedIp(_ input: GetDedicatedIpRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDedicatedIpResponse {
        return try await self.client.execute(operation: "GetDedicatedIp", path: "/v1/email/dedicated-ips/{Ip}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    public func getDedicatedIps(_ input: GetDedicatedIpsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDedicatedIpsResponse {
        return try await self.client.execute(operation: "GetDedicatedIps", path: "/v1/email/dedicated-ips", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account. When the Deliverability dashboard is enabled, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func getDeliverabilityDashboardOptions(_ input: GetDeliverabilityDashboardOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeliverabilityDashboardOptionsResponse {
        return try await self.client.execute(operation: "GetDeliverabilityDashboardOptions", path: "/v1/email/deliverability-dashboard", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve the results of a predictive inbox placement test.
    public func getDeliverabilityTestReport(_ input: GetDeliverabilityTestReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeliverabilityTestReportResponse {
        return try await self.client.execute(operation: "GetDeliverabilityTestReport", path: "/v1/email/deliverability-dashboard/test-reports/{ReportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve all the deliverability data for a specific campaign. This data is available for a campaign only if the campaign sent email by using a domain that the Deliverability dashboard is enabled for (PutDeliverabilityDashboardOption operation).
    public func getDomainDeliverabilityCampaign(_ input: GetDomainDeliverabilityCampaignRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainDeliverabilityCampaignResponse {
        return try await self.client.execute(operation: "GetDomainDeliverabilityCampaign", path: "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve inbox placement and engagement rates for the domains that you use to send email.
    public func getDomainStatisticsReport(_ input: GetDomainStatisticsReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainStatisticsReportResponse {
        return try await self.client.execute(operation: "GetDomainStatisticsReport", path: "/v1/email/deliverability-dashboard/statistics-report/{Domain}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings.
    public func getEmailIdentity(_ input: GetEmailIdentityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEmailIdentityResponse {
        return try await self.client.execute(operation: "GetEmailIdentity", path: "/v1/email/identities/{EmailIdentity}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    public func listConfigurationSets(_ input: ListConfigurationSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationSetsResponse {
        return try await self.client.execute(operation: "ListConfigurationSets", path: "/v1/email/configuration-sets", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    public func listDedicatedIpPools(_ input: ListDedicatedIpPoolsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDedicatedIpPoolsResponse {
        return try await self.client.execute(operation: "ListDedicatedIpPools", path: "/v1/email/dedicated-ip-pools", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    public func listDeliverabilityTestReports(_ input: ListDeliverabilityTestReportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeliverabilityTestReportsResponse {
        return try await self.client.execute(operation: "ListDeliverabilityTestReports", path: "/v1/email/deliverability-dashboard/test-reports", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    public func listDomainDeliverabilityCampaigns(_ input: ListDomainDeliverabilityCampaignsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainDeliverabilityCampaignsResponse {
        return try await self.client.execute(operation: "ListDomainDeliverabilityCampaigns", path: "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    public func listEmailIdentities(_ input: ListEmailIdentitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEmailIdentitiesResponse {
        return try await self.client.execute(operation: "ListEmailIdentities", path: "/v1/email/identities", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve a list of the tags (keys and values) that are associated with a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v1/email/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enable or disable the automatic warm-up feature for dedicated IP addresses.
    public func putAccountDedicatedIpWarmupAttributes(_ input: PutAccountDedicatedIpWarmupAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAccountDedicatedIpWarmupAttributesResponse {
        return try await self.client.execute(operation: "PutAccountDedicatedIpWarmupAttributes", path: "/v1/email/account/dedicated-ips/warmup", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enable or disable the ability of your account to send email.
    public func putAccountSendingAttributes(_ input: PutAccountSendingAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAccountSendingAttributesResponse {
        return try await self.client.execute(operation: "PutAccountSendingAttributes", path: "/v1/email/account/sending", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associate a configuration set with a dedicated IP pool. You can use dedicated IP pools to create groups of dedicated IP addresses for sending specific types of email.
    public func putConfigurationSetDeliveryOptions(_ input: PutConfigurationSetDeliveryOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutConfigurationSetDeliveryOptionsResponse {
        return try await self.client.execute(operation: "PutConfigurationSetDeliveryOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region.
    public func putConfigurationSetReputationOptions(_ input: PutConfigurationSetReputationOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutConfigurationSetReputationOptionsResponse {
        return try await self.client.execute(operation: "PutConfigurationSetReputationOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region.
    public func putConfigurationSetSendingOptions(_ input: PutConfigurationSetSendingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutConfigurationSetSendingOptionsResponse {
        return try await self.client.execute(operation: "PutConfigurationSetSendingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/sending", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint.
    public func putConfigurationSetTrackingOptions(_ input: PutConfigurationSetTrackingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutConfigurationSetTrackingOptionsResponse {
        return try await self.client.execute(operation: "PutConfigurationSetTrackingOptions", path: "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Move a dedicated IP address to an existing dedicated IP pool.  The dedicated IP address that you specify must already exist, and must be associated with your Amazon Pinpoint account.   The dedicated IP pool you specify must already exist. You can create a new pool by using the CreateDedicatedIpPool operation.
    ///
    public func putDedicatedIpInPool(_ input: PutDedicatedIpInPoolRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDedicatedIpInPoolResponse {
        return try await self.client.execute(operation: "PutDedicatedIpInPool", path: "/v1/email/dedicated-ips/{Ip}/pool", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func putDedicatedIpWarmupAttributes(_ input: PutDedicatedIpWarmupAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDedicatedIpWarmupAttributesResponse {
        return try await self.client.execute(operation: "PutDedicatedIpWarmupAttributes", path: "/v1/email/dedicated-ips/{Ip}/warmup", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enable or disable the Deliverability dashboard for your Amazon Pinpoint account. When you enable the Deliverability dashboard, you gain access to reputation, deliverability, and other metrics for the domains that you use to send email using Amazon Pinpoint. You also gain the ability to perform predictive inbox placement tests. When you use the Deliverability dashboard, you pay a monthly subscription charge, in addition to any other fees that you accrue by using Amazon Pinpoint. For more information about the features and cost of a Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
    public func putDeliverabilityDashboardOption(_ input: PutDeliverabilityDashboardOptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDeliverabilityDashboardOptionResponse {
        return try await self.client.execute(operation: "PutDeliverabilityDashboardOption", path: "/v1/email/deliverability-dashboard", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to enable or disable DKIM authentication for an email identity.
    public func putEmailIdentityDkimAttributes(_ input: PutEmailIdentityDkimAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEmailIdentityDkimAttributesResponse {
        return try await self.client.execute(operation: "PutEmailIdentityDkimAttributes", path: "/v1/email/identities/{EmailIdentity}/dkim", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to enable or disable feedback forwarding for an identity. This setting determines what happens when an identity is used to send an email that results in a bounce or complaint event. When you enable feedback forwarding, Amazon Pinpoint sends you email notifications when bounce or complaint events occur. Amazon Pinpoint sends this notification to the address that you specified in the Return-Path header of the original email. When you disable feedback forwarding, Amazon Pinpoint sends notifications through other mechanisms, such as by notifying an Amazon SNS topic. You're required to have a method of tracking bounces and complaints. If you haven't set up another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email notification when these events occur (even if this setting is disabled).
    public func putEmailIdentityFeedbackAttributes(_ input: PutEmailIdentityFeedbackAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEmailIdentityFeedbackAttributesResponse {
        return try await self.client.execute(operation: "PutEmailIdentityFeedbackAttributes", path: "/v1/email/identities/{EmailIdentity}/feedback", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used to enable or disable the custom Mail-From domain configuration for an email identity.
    public func putEmailIdentityMailFromAttributes(_ input: PutEmailIdentityMailFromAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEmailIdentityMailFromAttributesResponse {
        return try await self.client.execute(operation: "PutEmailIdentityMailFromAttributes", path: "/v1/email/identities/{EmailIdentity}/mail-from", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an email message. You can use the Amazon Pinpoint Email API to send two types of messages:    Simple – A standard email message. When you create this type of message, you specify the sender, the recipient, and the message body, and Amazon Pinpoint assembles the message for you.    Raw –  A raw, MIME-formatted email message. When you send this type of email, you have to specify all of the message headers, as well as the message body. You can use this message type to send messages that contain attachments. The message that you specify has to be a valid MIME message.
    public func sendEmail(_ input: SendEmailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendEmailResponse {
        return try await self.client.execute(operation: "SendEmail", path: "/v1/email/outbound-emails", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add one or more tags (keys and values) to a specified resource. A tag is a label that you optionally define and associate with a resource in Amazon Pinpoint. Tags can help you categorize and manage resources in different ways, such as by purpose, owner, environment, or other criteria. A resource can have as many as 50 tags. Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/v1/email/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove one or more tags (keys and values) from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/v1/email/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the configuration of an event destination for a configuration set. In Amazon Pinpoint, events include message sends, deliveries, opens, clicks, bounces, and complaints. Event destinations are places that you can send information about these events to. For example, you can send event data to Amazon SNS to receive notifications when you receive bounces or complaints, or you can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term storage.
    public func updateConfigurationSetEventDestination(_ input: UpdateConfigurationSetEventDestinationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConfigurationSetEventDestinationResponse {
        return try await self.client.execute(operation: "UpdateConfigurationSetEventDestination", path: "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension PinpointEmail {
    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDedicatedIpsPaginator(
        _ input: GetDedicatedIpsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDedicatedIpsRequest, GetDedicatedIpsResponse> {
        return .init(
            input: input,
            command: self.getDedicatedIps,
            inputKey: \GetDedicatedIpsRequest.nextToken,
            outputKey: \GetDedicatedIpsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigurationSetsPaginator(
        _ input: ListConfigurationSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigurationSetsRequest, ListConfigurationSetsResponse> {
        return .init(
            input: input,
            command: self.listConfigurationSets,
            inputKey: \ListConfigurationSetsRequest.nextToken,
            outputKey: \ListConfigurationSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDedicatedIpPoolsPaginator(
        _ input: ListDedicatedIpPoolsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDedicatedIpPoolsRequest, ListDedicatedIpPoolsResponse> {
        return .init(
            input: input,
            command: self.listDedicatedIpPools,
            inputKey: \ListDedicatedIpPoolsRequest.nextToken,
            outputKey: \ListDedicatedIpPoolsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeliverabilityTestReportsPaginator(
        _ input: ListDeliverabilityTestReportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeliverabilityTestReportsRequest, ListDeliverabilityTestReportsResponse> {
        return .init(
            input: input,
            command: self.listDeliverabilityTestReports,
            inputKey: \ListDeliverabilityTestReportsRequest.nextToken,
            outputKey: \ListDeliverabilityTestReportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainDeliverabilityCampaignsPaginator(
        _ input: ListDomainDeliverabilityCampaignsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainDeliverabilityCampaignsRequest, ListDomainDeliverabilityCampaignsResponse> {
        return .init(
            input: input,
            command: self.listDomainDeliverabilityCampaigns,
            inputKey: \ListDomainDeliverabilityCampaignsRequest.nextToken,
            outputKey: \ListDomainDeliverabilityCampaignsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEmailIdentitiesPaginator(
        _ input: ListEmailIdentitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEmailIdentitiesRequest, ListEmailIdentitiesResponse> {
        return .init(
            input: input,
            command: self.listEmailIdentities,
            inputKey: \ListEmailIdentitiesRequest.nextToken,
            outputKey: \ListEmailIdentitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
