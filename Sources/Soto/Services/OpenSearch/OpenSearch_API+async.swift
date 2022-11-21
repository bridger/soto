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
extension OpenSearch {
    // MARK: Async API Calls

    /// Allows the destination Amazon OpenSearch Service domain owner to accept an inbound cross-cluster search connection request. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func acceptInboundConnection(_ input: AcceptInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInboundConnectionResponse {
        return try await self.client.execute(operation: "AcceptInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches tags to an existing Amazon OpenSearch Service domain. Tags are a set of case-sensitive key-value pairs. An domain can have up to 10 tags. For more information, see Tagging Amazon OpenSearch Service domains.
    public func addTags(_ input: AddTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AddTags", path: "/2021-01-01/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a package with an Amazon OpenSearch Service domain. For more information, see Custom packages for Amazon OpenSearch Service.
    public func associatePackage(_ input: AssociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociatePackageResponse {
        return try await self.client.execute(operation: "AssociatePackage", path: "/2021-01-01/packages/associate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides access to an Amazon OpenSearch Service domain through the use of an interface VPC endpoint.
    public func authorizeVpcEndpointAccess(_ input: AuthorizeVpcEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuthorizeVpcEndpointAccessResponse {
        return try await self.client.execute(operation: "AuthorizeVpcEndpointAccess", path: "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a scheduled service software update for an Amazon OpenSearch Service domain. You can only perform this operation before the AutomatedUpdateDate and when the domain's UpdateStatus is PENDING_UPDATE. For more information, see Service software updates in Amazon OpenSearch Service.
    public func cancelServiceSoftwareUpdate(_ input: CancelServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "CancelServiceSoftwareUpdate", path: "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon OpenSearch Service domain. For more information, see Creating and managing Amazon OpenSearch Service domains.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        return try await self.client.execute(operation: "CreateDomain", path: "/2021-01-01/opensearch/domain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new cross-cluster search connection from a source Amazon OpenSearch Service domain to a destination domain. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func createOutboundConnection(_ input: CreateOutboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOutboundConnectionResponse {
        return try await self.client.execute(operation: "CreateOutboundConnection", path: "/2021-01-01/opensearch/cc/outboundConnection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a package for use with Amazon OpenSearch Service domains. For more information, see Custom packages for Amazon OpenSearch Service.
    public func createPackage(_ input: CreatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackageResponse {
        return try await self.client.execute(operation: "CreatePackage", path: "/2021-01-01/packages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an Amazon OpenSearch Service-managed VPC endpoint.
    public func createVpcEndpoint(_ input: CreateVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndpointResponse {
        return try await self.client.execute(operation: "CreateVpcEndpoint", path: "/2021-01-01/opensearch/vpcEndpoints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon OpenSearch Service domain and all of its data. You can't recover a domain after you delete it.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        return try await self.client.execute(operation: "DeleteDomain", path: "/2021-01-01/opensearch/domain/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the destination Amazon OpenSearch Service domain owner to delete an existing inbound cross-cluster search connection. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func deleteInboundConnection(_ input: DeleteInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInboundConnectionResponse {
        return try await self.client.execute(operation: "DeleteInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the source Amazon OpenSearch Service domain owner to delete an existing outbound cross-cluster search connection. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func deleteOutboundConnection(_ input: DeleteOutboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOutboundConnectionResponse {
        return try await self.client.execute(operation: "DeleteOutboundConnection", path: "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon OpenSearch Service package. For more information, see Custom packages for Amazon OpenSearch Service.
    public func deletePackage(_ input: DeletePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackageResponse {
        return try await self.client.execute(operation: "DeletePackage", path: "/2021-01-01/packages/{PackageID}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
    public func deleteVpcEndpoint(_ input: DeleteVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndpointResponse {
        return try await self.client.execute(operation: "DeleteVpcEndpoint", path: "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the domain configuration for the specified Amazon OpenSearch Service domain, including the domain ID, domain service endpoint, and domain ARN.
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResponse {
        return try await self.client.execute(operation: "DescribeDomain", path: "/2021-01-01/opensearch/domain/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of optimizations that Auto-Tune has made to an Amazon OpenSearch Service domain. For more information, see Auto-Tune for Amazon OpenSearch Service.
    public func describeDomainAutoTunes(_ input: DescribeDomainAutoTunesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainAutoTunesResponse {
        return try await self.client.execute(operation: "DescribeDomainAutoTunes", path: "/2021-01-01/opensearch/domain/{DomainName}/autoTunes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the current blue/green deployment happening on an Amazon OpenSearch Service domain. For more information, see Making configuration changes in Amazon OpenSearch Service.
    public func describeDomainChangeProgress(_ input: DescribeDomainChangeProgressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainChangeProgressResponse {
        return try await self.client.execute(operation: "DescribeDomainChangeProgress", path: "/2021-01-01/opensearch/domain/{DomainName}/progress", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the configuration of an Amazon OpenSearch Service domain.
    public func describeDomainConfig(_ input: DescribeDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainConfigResponse {
        return try await self.client.execute(operation: "DescribeDomainConfig", path: "/2021-01-01/opensearch/domain/{DomainName}/config", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns domain configuration information about the specified Amazon OpenSearch Service domains.
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        return try await self.client.execute(operation: "DescribeDomains", path: "/2021-01-01/opensearch/domain-info", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the inbound cross-cluster search connections for a destination (remote) Amazon OpenSearch Service domain. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func describeInboundConnections(_ input: DescribeInboundConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInboundConnectionsResponse {
        return try await self.client.execute(operation: "DescribeInboundConnections", path: "/2021-01-01/opensearch/cc/inboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the instance count, storage, and master node limits for a given OpenSearch or Elasticsearch version and instance type.
    public func describeInstanceTypeLimits(_ input: DescribeInstanceTypeLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypeLimitsResponse {
        return try await self.client.execute(operation: "DescribeInstanceTypeLimits", path: "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the outbound cross-cluster connections for a local (source) Amazon OpenSearch Service domain. For more information, see Cross-cluster search for Amazon OpenSearch Service.
    public func describeOutboundConnections(_ input: DescribeOutboundConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOutboundConnectionsResponse {
        return try await self.client.execute(operation: "DescribeOutboundConnections", path: "/2021-01-01/opensearch/cc/outboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes all packages available to OpenSearch Service. For more information, see Custom packages for Amazon OpenSearch Service.
    public func describePackages(_ input: DescribePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        return try await self.client.execute(operation: "DescribePackages", path: "/2021-01-01/packages/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the available Amazon OpenSearch Service Reserved Instance offerings for a given Region. For more information, see Reserved Instances in Amazon OpenSearch Service.
    public func describeReservedInstanceOfferings(_ input: DescribeReservedInstanceOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstanceOfferingsResponse {
        return try await self.client.execute(operation: "DescribeReservedInstanceOfferings", path: "/2021-01-01/opensearch/reservedInstanceOfferings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the Amazon OpenSearch Service instances that you have reserved in a given Region. For more information, see Reserved Instances in Amazon OpenSearch Service.
    public func describeReservedInstances(_ input: DescribeReservedInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesResponse {
        return try await self.client.execute(operation: "DescribeReservedInstances", path: "/2021-01-01/opensearch/reservedInstances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more Amazon OpenSearch Service-managed VPC endpoints.
    public func describeVpcEndpoints(_ input: DescribeVpcEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndpointsResponse {
        return try await self.client.execute(operation: "DescribeVpcEndpoints", path: "/2021-01-01/opensearch/vpcEndpoints/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a package from the specified Amazon OpenSearch Service domain. The package can't be in use with any OpenSearch index for the dissociation to succeed. The package is still available in OpenSearch Service for association later. For more information, see Custom packages for Amazon OpenSearch Service.
    public func dissociatePackage(_ input: DissociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DissociatePackageResponse {
        return try await self.client.execute(operation: "DissociatePackage", path: "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a map of OpenSearch or Elasticsearch versions and the versions you can upgrade them to.
    public func getCompatibleVersions(_ input: GetCompatibleVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCompatibleVersionsResponse {
        return try await self.client.execute(operation: "GetCompatibleVersions", path: "/2021-01-01/opensearch/compatibleVersions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Amazon OpenSearch Service package versions, along with their creation time and commit message. For more information, see Custom packages for Amazon OpenSearch Service.
    public func getPackageVersionHistory(_ input: GetPackageVersionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPackageVersionHistoryResponse {
        return try await self.client.execute(operation: "GetPackageVersionHistory", path: "/2021-01-01/packages/{PackageID}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the complete history of the last 10 upgrades performed on an Amazon OpenSearch Service domain.
    public func getUpgradeHistory(_ input: GetUpgradeHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeHistoryResponse {
        return try await self.client.execute(operation: "GetUpgradeHistory", path: "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the most recent status of the last upgrade or upgrade eligibility check performed on an Amazon OpenSearch Service domain.
    public func getUpgradeStatus(_ input: GetUpgradeStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeStatusResponse {
        return try await self.client.execute(operation: "GetUpgradeStatus", path: "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the names of all Amazon OpenSearch Service domains owned by the current user in the active Region.
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(operation: "ListDomainNames", path: "/2021-01-01/domain", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Amazon OpenSearch Service domains associated with a given package. For more information, see Custom packages for Amazon OpenSearch Service.
    public func listDomainsForPackage(_ input: ListDomainsForPackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsForPackageResponse {
        return try await self.client.execute(operation: "ListDomainsForPackage", path: "/2021-01-01/packages/{PackageID}/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all instance types and available features for a given OpenSearch or Elasticsearch version.
    public func listInstanceTypeDetails(_ input: ListInstanceTypeDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstanceTypeDetailsResponse {
        return try await self.client.execute(operation: "ListInstanceTypeDetails", path: "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all packages associated with an Amazon OpenSearch Service domain. For more information, see Custom packages for Amazon OpenSearch Service.
    public func listPackagesForDomain(_ input: ListPackagesForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagesForDomainResponse {
        return try await self.client.execute(operation: "ListPackagesForDomain", path: "/2021-01-01/domain/{DomainName}/packages", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all resource tags for an Amazon OpenSearch Service domain. For more information, see Tagging Amazon OpenSearch Service domains.
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsResponse {
        return try await self.client.execute(operation: "ListTags", path: "/2021-01-01/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service supports.
    public func listVersions(_ input: ListVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVersionsResponse {
        return try await self.client.execute(operation: "ListVersions", path: "/2021-01-01/opensearch/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about each Amazon Web Services principal that is allowed to access a given Amazon OpenSearch Service domain through the use of an interface VPC endpoint.
    public func listVpcEndpointAccess(_ input: ListVpcEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVpcEndpointAccessResponse {
        return try await self.client.execute(operation: "ListVpcEndpointAccess", path: "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current Amazon Web Services account and Region.
    public func listVpcEndpoints(_ input: ListVpcEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVpcEndpointsResponse {
        return try await self.client.execute(operation: "ListVpcEndpoints", path: "/2021-01-01/opensearch/vpcEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain.
    public func listVpcEndpointsForDomain(_ input: ListVpcEndpointsForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVpcEndpointsForDomainResponse {
        return try await self.client.execute(operation: "ListVpcEndpointsForDomain", path: "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to purchase Amazon OpenSearch Service Reserved Instances.
    public func purchaseReservedInstanceOffering(_ input: PurchaseReservedInstanceOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseReservedInstanceOfferingResponse {
        return try await self.client.execute(operation: "PurchaseReservedInstanceOffering", path: "/2021-01-01/opensearch/purchaseReservedInstanceOffering", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the remote Amazon OpenSearch Service domain owner to reject an inbound cross-cluster connection request.
    public func rejectInboundConnection(_ input: RejectInboundConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectInboundConnectionResponse {
        return try await self.client.execute(operation: "RejectInboundConnection", path: "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified set of tags from an Amazon OpenSearch Service domain. For more information, see  Tagging Amazon OpenSearch Service domains.
    public func removeTags(_ input: RemoveTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveTags", path: "/2021-01-01/tags-removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Revokes access to an Amazon OpenSearch Service domain that was provided through an interface VPC endpoint.
    public func revokeVpcEndpointAccess(_ input: RevokeVpcEndpointAccessRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeVpcEndpointAccessResponse {
        return try await self.client.execute(operation: "RevokeVpcEndpointAccess", path: "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Schedules a service software update for an Amazon OpenSearch Service domain. For more information, see Service software updates in Amazon OpenSearch Service.
    public func startServiceSoftwareUpdate(_ input: StartServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "StartServiceSoftwareUpdate", path: "/2021-01-01/opensearch/serviceSoftwareUpdate/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the cluster configuration of the specified Amazon OpenSearch Service domain.
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainConfigResponse {
        return try await self.client.execute(operation: "UpdateDomainConfig", path: "/2021-01-01/opensearch/domain/{DomainName}/config", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a package for use with Amazon OpenSearch Service domains. For more information, see Custom packages for Amazon OpenSearch Service.
    public func updatePackage(_ input: UpdatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePackageResponse {
        return try await self.client.execute(operation: "UpdatePackage", path: "/2021-01-01/packages/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
    public func updateVpcEndpoint(_ input: UpdateVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVpcEndpointResponse {
        return try await self.client.execute(operation: "UpdateVpcEndpoint", path: "/2021-01-01/opensearch/vpcEndpoints/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to either upgrade your Amazon OpenSearch Service domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch.
    public func upgradeDomain(_ input: UpgradeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDomainResponse {
        return try await self.client.execute(operation: "UpgradeDomain", path: "/2021-01-01/opensearch/upgradeDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
