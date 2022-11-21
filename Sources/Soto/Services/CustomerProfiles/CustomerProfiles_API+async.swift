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
extension CustomerProfiles {
    // MARK: Async API Calls

    /// Associates a new key value with a specific profile, such as a Contact Record ContactId. A profile object can have a single unique key and any number of additional keys that can be used to identify the profile that it belongs to.
    public func addProfileKey(_ input: AddProfileKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProfileKeyResponse {
        return try await self.client.execute(operation: "AddProfileKey", path: "/domains/{DomainName}/profiles/keys", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a domain, which is a container for all customer data, such as customer profile attributes, object types, profile keys, and encryption keys. You can create multiple domains, and each domain can have multiple third-party integrations. Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances can be associated with one domain. Use this API or UpdateDomain to enable identity resolution: set Matching to true.  To prevent cross-service impersonation when you call this API, see Cross-service confused deputy prevention for sample policies that you should apply.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        return try await self.client.execute(operation: "CreateDomain", path: "/domains/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 	Creates an integration workflow. An integration workflow is an async process which ingests historic data and sets up an integration for ongoing updates. The supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.
    ///
    public func createIntegrationWorkflow(_ input: CreateIntegrationWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIntegrationWorkflowResponse {
        return try await self.client.execute(operation: "CreateIntegrationWorkflow", path: "/domains/{DomainName}/workflows/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a standard profile. A standard profile represents the following attributes for a customer profile in a domain.
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProfileResponse {
        return try await self.client.execute(operation: "CreateProfile", path: "/domains/{DomainName}/profiles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specific domain and all of its customer data, such as customer profile attributes and their related objects.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        return try await self.client.execute(operation: "DeleteDomain", path: "/domains/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an integration from a specific domain.
    public func deleteIntegration(_ input: DeleteIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIntegrationResponse {
        return try await self.client.execute(operation: "DeleteIntegration", path: "/domains/{DomainName}/integrations/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the standard customer profile and all data pertaining to the profile.
    public func deleteProfile(_ input: DeleteProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProfileResponse {
        return try await self.client.execute(operation: "DeleteProfile", path: "/domains/{DomainName}/profiles/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a searchable key from a customer profile.
    public func deleteProfileKey(_ input: DeleteProfileKeyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProfileKeyResponse {
        return try await self.client.execute(operation: "DeleteProfileKey", path: "/domains/{DomainName}/profiles/keys/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an object associated with a profile of a given ProfileObjectType.
    public func deleteProfileObject(_ input: DeleteProfileObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProfileObjectResponse {
        return try await self.client.execute(operation: "DeleteProfileObject", path: "/domains/{DomainName}/profiles/objects/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a ProfileObjectType from a specific domain as well as removes all the ProfileObjects of that type. It also disables integrations from this specific ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that were populated from this ProfileObjectType.
    public func deleteProfileObjectType(_ input: DeleteProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProfileObjectTypeResponse {
        return try await self.client.execute(operation: "DeleteProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified workflow and all its corresponding resources. This is an async process.
    public func deleteWorkflow(_ input: DeleteWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWorkflowResponse {
        return try await self.client.execute(operation: "DeleteWorkflow", path: "/domains/{DomainName}/workflows/{WorkflowId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tests the auto-merging settings of your Identity Resolution Job without merging your data. It randomly selects a sample of matching groups from the existing matching results, and applies the automerging settings that you provided. You can then view the number of profiles in the sample, the number of matches, and the number of profiles identified to be merged. This enables you to evaluate the accuracy of the attributes in your matching list.  You can't view which profiles are matched and would be merged.   We strongly recommend you use this API to do a dry run of the automerging process before running the Identity Resolution Job. Include at least two matching attributes. If your matching list includes too few attributes (such as only FirstName or only LastName), there may be a large number of matches. This increases the chances of erroneous merges.
    public func getAutoMergingPreview(_ input: GetAutoMergingPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAutoMergingPreviewResponse {
        return try await self.client.execute(operation: "GetAutoMergingPreview", path: "/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific domain.
    public func getDomain(_ input: GetDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainResponse {
        return try await self.client.execute(operation: "GetDomain", path: "/domains/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an Identity Resolution Job in a specific domain.  Identity Resolution Jobs are set up using the Amazon Connect admin console. For more information, see Use Identity Resolution to consolidate similar profiles.
    public func getIdentityResolutionJob(_ input: GetIdentityResolutionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIdentityResolutionJobResponse {
        return try await self.client.execute(operation: "GetIdentityResolutionJob", path: "/domains/{DomainName}/identity-resolution-jobs/{JobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an integration for a domain.
    public func getIntegration(_ input: GetIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIntegrationResponse {
        return try await self.client.execute(operation: "GetIntegration", path: "/domains/{DomainName}/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Before calling this API, use CreateDomain or UpdateDomain to enable identity resolution: set Matching to true. GetMatches returns potentially matching profiles, based on the results of the latest run of a machine learning process.   The process of matching duplicate profiles. If Matching = true, Amazon Connect Customer Profiles starts a weekly
    /// batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    /// Saturday at 12AM UTC to detect duplicate profiles in your domains.  After the Identity Resolution Job completes, use the
    /// GetMatches
    /// API to return and review the results. Or, if you have configured ExportingConfig in the MatchingRequest, you can download the results from
    /// S3.
    ///  Amazon Connect uses the following profile attributes to identify matches:   PhoneNumber   HomePhoneNumber   BusinessPhoneNumber   MobilePhoneNumber   EmailAddress   PersonalEmailAddress   BusinessEmailAddress   FullName   For example, two or more profiles—with spelling mistakes such as John Doe and Jhn Doe, or different casing email addresses such as JOHN_DOE@ANYCOMPANY.COM and johndoe@anycompany.com, or different phone number formats such as 555-010-0000 and +1-555-010-0000—can be detected as belonging to the same customer John Doe and merged into a unified profile.
    public func getMatches(_ input: GetMatchesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMatchesResponse {
        return try await self.client.execute(operation: "GetMatches", path: "/domains/{DomainName}/matches", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the object types for a specific domain.
    public func getProfileObjectType(_ input: GetProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProfileObjectTypeResponse {
        return try await self.client.execute(operation: "GetProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the template information for a specific object type. A template is a predefined ProfileObjectType, such as “Salesforce-Account” or “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API, with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the template.
    public func getProfileObjectTypeTemplate(_ input: GetProfileObjectTypeTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProfileObjectTypeTemplateResponse {
        return try await self.client.execute(operation: "GetProfileObjectTypeTemplate", path: "/templates/{TemplateId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get details of specified workflow.
    public func getWorkflow(_ input: GetWorkflowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkflowResponse {
        return try await self.client.execute(operation: "GetWorkflow", path: "/domains/{DomainName}/workflows/{WorkflowId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get granular list of steps in workflow.
    public func getWorkflowSteps(_ input: GetWorkflowStepsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWorkflowStepsResponse {
        return try await self.client.execute(operation: "GetWorkflowSteps", path: "/domains/{DomainName}/workflows/{WorkflowId}/steps", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the integrations associated to a specific URI in the AWS account.
    public func listAccountIntegrations(_ input: ListAccountIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountIntegrationsResponse {
        return try await self.client.execute(operation: "ListAccountIntegrations", path: "/integrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the domains for an AWS account that have been created.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsResponse {
        return try await self.client.execute(operation: "ListDomains", path: "/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the Identity Resolution Jobs in your domain. The response sorts the list by JobStartTime.
    public func listIdentityResolutionJobs(_ input: ListIdentityResolutionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIdentityResolutionJobsResponse {
        return try await self.client.execute(operation: "ListIdentityResolutionJobs", path: "/domains/{DomainName}/identity-resolution-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the integrations in your domain.
    public func listIntegrations(_ input: ListIntegrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIntegrationsResponse {
        return try await self.client.execute(operation: "ListIntegrations", path: "/domains/{DomainName}/integrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the template information for object types.
    public func listProfileObjectTypeTemplates(_ input: ListProfileObjectTypeTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProfileObjectTypeTemplatesResponse {
        return try await self.client.execute(operation: "ListProfileObjectTypeTemplates", path: "/templates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the templates available within the service.
    public func listProfileObjectTypes(_ input: ListProfileObjectTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProfileObjectTypesResponse {
        return try await self.client.execute(operation: "ListProfileObjectTypes", path: "/domains/{DomainName}/object-types", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of objects associated with a profile of a given ProfileObjectType.
    public func listProfileObjects(_ input: ListProfileObjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProfileObjectsResponse {
        return try await self.client.execute(operation: "ListProfileObjects", path: "/domains/{DomainName}/profiles/objects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Query to list all workflows.
    public func listWorkflows(_ input: ListWorkflowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkflowsResponse {
        return try await self.client.execute(operation: "ListWorkflows", path: "/domains/{DomainName}/workflows", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Runs an AWS Lambda job that does the following:   All the profileKeys in the ProfileToBeMerged will be moved to the main profile.   All the objects in the ProfileToBeMerged will be moved to the main profile.   All the ProfileToBeMerged will be deleted at the end.   All the profileKeys in the ProfileIdsToBeMerged will be moved to the main profile.   Standard fields are merged as follows:   Fields are always "union"-ed if there are no conflicts in standard fields or attributeKeys.   When there are conflicting fields:
    ///    If no SourceProfileIds entry is specified, the main Profile value is always taken.    If a SourceProfileIds entry is specified, the specified profileId is always taken, even if it is a NULL value.       You can use MergeProfiles together with GetMatches, which returns potentially matching profiles, or use it with the results of another matching system. After profiles have been merged, they cannot be separated (unmerged).
    public func mergeProfiles(_ input: MergeProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MergeProfilesResponse {
        return try await self.client.execute(operation: "MergeProfiles", path: "/domains/{DomainName}/profiles/objects/merge", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an integration between the service and a third-party service, which includes Amazon AppFlow and Amazon Connect. An integration can belong to only one domain. To add or remove tags on an existing Integration, see  TagResource / UntagResource.
    public func putIntegration(_ input: PutIntegrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutIntegrationResponse {
        return try await self.client.execute(operation: "PutIntegration", path: "/domains/{DomainName}/integrations", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds additional objects to customer profiles of a given ObjectType. When adding a specific profile object, like a Contact Record, an inferred profile can get created if it is not mapped to an existing profile. The resulting profile will only have a phone number populated in the standard ProfileObject. Any additional Contact Records with the same phone number will be mapped to the same inferred profile. When a ProfileObject is created and if a ProfileObjectType already exists for the ProfileObject, it will provide data to a standard profile depending on the ProfileObjectType definition. PutProfileObject needs an ObjectType, which can be created using PutProfileObjectType.
    public func putProfileObject(_ input: PutProfileObjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutProfileObjectResponse {
        return try await self.client.execute(operation: "PutProfileObject", path: "/domains/{DomainName}/profiles/objects", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Defines a ProfileObjectType. To add or remove tags on an existing ObjectType, see  TagResource/UntagResource.
    public func putProfileObjectType(_ input: PutProfileObjectTypeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutProfileObjectTypeResponse {
        return try await self.client.execute(operation: "PutProfileObjectType", path: "/domains/{DomainName}/object-types/{ObjectTypeName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for profiles within a specific domain using one or more predefined search keys (e.g., _fullName, _phone, _email, _account, etc.) and/or custom-defined search keys. A search key is a data type pair that consists of a KeyName and Values list. This operation supports searching for profiles with a minimum of 1 key-value(s) pair and up to 5 key-value(s) pairs using either AND or OR logic.
    public func searchProfiles(_ input: SearchProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchProfilesResponse {
        return try await self.client.execute(operation: "SearchProfiles", path: "/domains/{DomainName}/profiles/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the properties of a domain, including creating or selecting a dead letter queue or an encryption key. After a domain is created, the name can’t be changed. Use this API or CreateDomain to enable identity resolution: set Matching to true.  To prevent cross-service impersonation when you call this API, see Cross-service confused deputy prevention for sample policies that you should apply.  To add or remove tags on an existing Domain, see TagResource/UntagResource.
    public func updateDomain(_ input: UpdateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainResponse {
        return try await self.client.execute(operation: "UpdateDomain", path: "/domains/{DomainName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the properties of a profile. The ProfileId is required for updating a customer profile. When calling the UpdateProfile API, specifying an empty string value means that any existing value will be removed. Not specifying a string value means that any value already there will be kept.
    public func updateProfile(_ input: UpdateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProfileResponse {
        return try await self.client.execute(operation: "UpdateProfile", path: "/domains/{DomainName}/profiles", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
