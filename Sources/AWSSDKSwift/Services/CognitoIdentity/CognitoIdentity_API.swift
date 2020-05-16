//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS CognitoIdentity service.

Amazon Cognito Federated Identities Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application. Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials. For a description of the authentication flow from the Amazon Cognito Developer Guide see Authentication Flow. For more information see Amazon Cognito Federated Identities.
*/
public struct CognitoIdentity {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CognitoIdentity client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AWSCognitoIdentityService",
            service: "cognito-identity",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2014-06-30",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CognitoIdentityErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The keys for SupportedLoginProviders are as follows:   Facebook: graph.facebook.com    Google: accounts.google.com    Amazon: www.amazon.com    Twitter: api.twitter.com    Digits: www.digits.com    You must use AWS Developer credentials to call this API.
    public func createIdentityPool(_ input: CreateIdentityPoolInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdentityPool> {
        return client.send(operation: "CreateIdentityPool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete. You must use AWS Developer credentials to call this API.
    public func deleteIdentities(_ input: DeleteIdentitiesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIdentitiesResponse> {
        return client.send(operation: "DeleteIdentities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an identity pool. Once a pool is deleted, users will not be able to authenticate with the pool. You must use AWS Developer credentials to call this API.
    @discardableResult public func deleteIdentityPool(_ input: DeleteIdentityPoolInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteIdentityPool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns metadata related to the given identity, including when the identity was created and any associated linked logins. You must use AWS Developer credentials to call this API.
    public func describeIdentity(_ input: DescribeIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdentityDescription> {
        return client.send(operation: "DescribeIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users. You must use AWS Developer credentials to call this API.
    public func describeIdentityPool(_ input: DescribeIdentityPoolInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdentityPool> {
        return client.send(operation: "DescribeIdentityPool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token. This is a public API. You do not need any credentials to call this API.
    public func getCredentialsForIdentity(_ input: GetCredentialsForIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCredentialsForIdentityResponse> {
        return client.send(operation: "GetCredentialsForIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account. This is a public API. You do not need any credentials to call this API.
    public func getId(_ input: GetIdInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIdResponse> {
        return client.send(operation: "GetId", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the roles for an identity pool. You must use AWS Developer credentials to call this API.
    public func getIdentityPoolRoles(_ input: GetIdentityPoolRolesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIdentityPoolRolesResponse> {
        return client.send(operation: "GetIdentityPoolRoles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by GetId. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link. The OpenId token is valid for 10 minutes. This is a public API. You do not need any credentials to call this API.
    public func getOpenIdToken(_ input: GetOpenIdTokenInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOpenIdTokenResponse> {
        return client.send(operation: "GetOpenIdToken", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the Logins map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users. You can use GetOpenIdTokenForDeveloperIdentity to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the IdentityId should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing IdentityId. This API will create the identity in the specified IdentityPoolId. You must use AWS Developer credentials to call this API.
    public func getOpenIdTokenForDeveloperIdentity(_ input: GetOpenIdTokenForDeveloperIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOpenIdTokenForDeveloperIdentityResponse> {
        return client.send(operation: "GetOpenIdTokenForDeveloperIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the identities in an identity pool. You must use AWS Developer credentials to call this API.
    public func listIdentities(_ input: ListIdentitiesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIdentitiesResponse> {
        return client.send(operation: "ListIdentities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all of the Cognito identity pools registered for your account. You must use AWS Developer credentials to call this API.
    public func listIdentityPools(_ input: ListIdentityPoolsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIdentityPoolsResponse> {
        return client.send(operation: "ListIdentityPools", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the tags that are assigned to an Amazon Cognito identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria. You can use this action up to 10 times per second, per account.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity. Either IdentityID or DeveloperUserIdentifier must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, DeveloperUserIdentifier will be matched against IdentityID. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a ResourceConflictException is thrown.  LookupDeveloperIdentity is intended for low-throughput control plane operations: for example, to enable customer service to locate an identity ID by username. If you are using it for higher-volume operations such as user authentication, your requests are likely to be throttled. GetOpenIdTokenForDeveloperIdentity is a better option for higher-volume operations for user authentication. You must use AWS Developer credentials to call this API.
    public func lookupDeveloperIdentity(_ input: LookupDeveloperIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookupDeveloperIdentityResponse> {
        return client.send(operation: "LookupDeveloperIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (SourceUserIdentifier) with the IdentityId of the DestinationUserIdentifier. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown. The number of linked logins is limited to 20. So, the number of linked logins for the source user, SourceUserIdentifier, and the destination user, DestinationUserIdentifier, together should not be larger than 20. Otherwise, an exception will be thrown. You must use AWS Developer credentials to call this API.
    public func mergeDeveloperIdentities(_ input: MergeDeveloperIdentitiesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MergeDeveloperIdentitiesResponse> {
        return client.send(operation: "MergeDeveloperIdentities", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Sets the roles for an identity pool. These roles are used when making calls to GetCredentialsForIdentity action. You must use AWS Developer credentials to call this API.
    @discardableResult public func setIdentityPoolRoles(_ input: SetIdentityPoolRolesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "SetIdentityPoolRoles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Assigns a set of tags to an Amazon Cognito identity pool. A tag is a label that you can use to categorize and manage identity pools in different ways, such as by purpose, owner, environment, or other criteria. Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of an identity pool, one for testing and another for production, you might assign an Environment tag key to both identity pools. The value of this key might be Test for one identity pool and Production for the other. Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your identity pools. In an IAM policy, you can constrain permissions for identity pools based on specific tags or tag values. You can use this action up to 5 times per second, per account. An identity pool can have as many as 50 tags.
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Unlinks a DeveloperUserIdentifier from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible. You must use AWS Developer credentials to call this API.
    @discardableResult public func unlinkDeveloperIdentity(_ input: UnlinkDeveloperIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UnlinkDeveloperIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible. This is a public API. You do not need any credentials to call this API.
    @discardableResult public func unlinkIdentity(_ input: UnlinkIdentityInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UnlinkIdentity", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified tags from an Amazon Cognito identity pool. You can use this action up to 5 times per second, per account
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an identity pool. You must use AWS Developer credentials to call this API.
    public func updateIdentityPool(_ input: IdentityPool, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IdentityPool> {
        return client.send(operation: "UpdateIdentityPool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
