// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Macie {

    public struct ListMemberAccountsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. 
        public let maxResults: Int32?
        /// Use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListMemberAccounts action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. 
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListS3ResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "memberAccountId", required: false, type: .string), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer)
        ]
        /// Use this parameter when paginating results. Set its value to null on your first call to the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data. 
        public let nextToken: String?
        /// The Amazon Macie member account ID whose associated S3 resources you want to list. 
        public let memberAccountId: String?
        /// Use this parameter to indicate the maximum number of items that you want in the response. The default value is 250. 
        public let maxResults: Int32?

        public init(maxResults: Int32? = nil, memberAccountId: String? = nil, nextToken: String? = nil) {
            self.nextToken = nextToken
            self.memberAccountId = memberAccountId
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case memberAccountId = "memberAccountId"
            case maxResults = "maxResults"
        }
    }

    public struct S3Resource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "prefix", required: false, type: .string), 
            AWSShapeMember(label: "bucketName", required: true, type: .string)
        ]
        /// The prefix of the S3 bucket. 
        public let prefix: String?
        /// The name of the S3 bucket.
        public let bucketName: String

        public init(bucketName: String, prefix: String? = nil) {
            self.prefix = prefix
            self.bucketName = bucketName
        }

        private enum CodingKeys: String, CodingKey {
            case prefix = "prefix"
            case bucketName = "bucketName"
        }
    }

    public enum S3OneTimeClassificationType: String, CustomStringConvertible, Codable {
        case full = "FULL"
        case none = "NONE"
        public var description: String { return self.rawValue }
    }

    public struct ClassificationTypeUpdate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "continuous", required: false, type: .enum), 
            AWSShapeMember(label: "oneTime", required: false, type: .enum)
        ]
        /// A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie begins performing continuous classification after a bucket is successfully associated with Amazon Macie. 
        public let continuous: S3ContinuousClassificationType?
        /// A one-time classification of all of the existing objects in a specified S3 bucket. 
        public let oneTime: S3OneTimeClassificationType?

        public init(continuous: S3ContinuousClassificationType? = nil, oneTime: S3OneTimeClassificationType? = nil) {
            self.continuous = continuous
            self.oneTime = oneTime
        }

        private enum CodingKeys: String, CodingKey {
            case continuous = "continuous"
            case oneTime = "oneTime"
        }
    }

    public struct DisassociateS3ResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccountId", required: false, type: .string), 
            AWSShapeMember(label: "associatedS3Resources", required: true, type: .list)
        ]
        /// The ID of the Amazon Macie member account whose resources you want to remove from being monitored by Amazon Macie. 
        public let memberAccountId: String?
        /// The S3 resources (buckets or prefixes) that you want to remove from being monitored and classified by Amazon Macie. 
        public let associatedS3Resources: [S3Resource]

        public init(associatedS3Resources: [S3Resource], memberAccountId: String? = nil) {
            self.memberAccountId = memberAccountId
            self.associatedS3Resources = associatedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId = "memberAccountId"
            case associatedS3Resources = "associatedS3Resources"
        }
    }

    public struct S3ResourceClassification: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "bucketName", required: true, type: .string), 
            AWSShapeMember(label: "classificationType", required: true, type: .structure), 
            AWSShapeMember(label: "prefix", required: false, type: .string)
        ]
        /// The name of the S3 bucket that you want to associate with Amazon Macie.
        public let bucketName: String
        /// The classification type that you want to specify for the resource associated with Amazon Macie. 
        public let classificationType: ClassificationType
        /// The prefix of the S3 bucket that you want to associate with Amazon Macie.
        public let prefix: String?

        public init(bucketName: String, classificationType: ClassificationType, prefix: String? = nil) {
            self.bucketName = bucketName
            self.classificationType = classificationType
            self.prefix = prefix
        }

        private enum CodingKeys: String, CodingKey {
            case bucketName = "bucketName"
            case classificationType = "classificationType"
            case prefix = "prefix"
        }
    }

    public struct AssociateS3ResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccountId", required: false, type: .string), 
            AWSShapeMember(label: "s3Resources", required: true, type: .list)
        ]
        /// The ID of the Amazon Macie member account whose resources you want to associate with Macie. 
        public let memberAccountId: String?
        /// The S3 resources that you want to associate with Amazon Macie for monitoring and data classification. 
        public let s3Resources: [S3ResourceClassification]

        public init(memberAccountId: String? = nil, s3Resources: [S3ResourceClassification]) {
            self.memberAccountId = memberAccountId
            self.s3Resources = s3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId = "memberAccountId"
            case s3Resources = "s3Resources"
        }
    }

    public struct DisassociateMemberAccountRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccountId", required: true, type: .string)
        ]
        /// The ID of the member account that you want to remove from Amazon Macie.
        public let memberAccountId: String

        public init(memberAccountId: String) {
            self.memberAccountId = memberAccountId
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId = "memberAccountId"
        }
    }

    public enum S3ContinuousClassificationType: String, CustomStringConvertible, Codable {
        case full = "FULL"
        public var description: String { return self.rawValue }
    }

    public struct UpdateS3ResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "failedS3Resources", required: false, type: .list)
        ]
        /// The S3 resources whose classification types can't be updated. An error code and an error message are provided for each failed item. 
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources = "failedS3Resources"
        }
    }

    public struct MemberAccount: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "accountId", required: false, type: .string)
        ]
        /// The AWS account ID of the Amazon Macie member account.
        public let accountId: String?

        public init(accountId: String? = nil) {
            self.accountId = accountId
        }

        private enum CodingKeys: String, CodingKey {
            case accountId = "accountId"
        }
    }

    public struct ClassificationType: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "oneTime", required: true, type: .enum), 
            AWSShapeMember(label: "continuous", required: true, type: .enum)
        ]
        /// A one-time classification of all of the existing objects in a specified S3 bucket. 
        public let oneTime: S3OneTimeClassificationType
        /// A continuous classification of the objects that are added to a specified S3 bucket. Amazon Macie begins performing continuous classification after a bucket is successfully associated with Amazon Macie. 
        public let continuous: S3ContinuousClassificationType

        public init(continuous: S3ContinuousClassificationType, oneTime: S3OneTimeClassificationType) {
            self.oneTime = oneTime
            self.continuous = continuous
        }

        private enum CodingKeys: String, CodingKey {
            case oneTime = "oneTime"
            case continuous = "continuous"
        }
    }

    public struct S3ResourceClassificationUpdate: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "prefix", required: false, type: .string), 
            AWSShapeMember(label: "classificationTypeUpdate", required: true, type: .structure), 
            AWSShapeMember(label: "bucketName", required: true, type: .string)
        ]
        /// The prefix of the S3 bucket whose classification types you want to update.
        public let prefix: String?
        /// The classification type that you want to update for the resource associated with Amazon Macie. 
        public let classificationTypeUpdate: ClassificationTypeUpdate
        /// The name of the S3 bucket whose classification types you want to update.
        public let bucketName: String

        public init(bucketName: String, classificationTypeUpdate: ClassificationTypeUpdate, prefix: String? = nil) {
            self.prefix = prefix
            self.classificationTypeUpdate = classificationTypeUpdate
            self.bucketName = bucketName
        }

        private enum CodingKeys: String, CodingKey {
            case prefix = "prefix"
            case classificationTypeUpdate = "classificationTypeUpdate"
            case bucketName = "bucketName"
        }
    }

    public struct AssociateS3ResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "failedS3Resources", required: false, type: .list)
        ]
        /// S3 resources that couldn't be associated with Amazon Macie. An error code and an error message are provided for each failed item. 
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources = "failedS3Resources"
        }
    }

    public struct FailedS3Resource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "errorMessage", required: false, type: .string), 
            AWSShapeMember(label: "failedItem", required: false, type: .structure), 
            AWSShapeMember(label: "errorCode", required: false, type: .string)
        ]
        /// The error message of a failed item.
        public let errorMessage: String?
        /// The failed S3 resources.
        public let failedItem: S3Resource?
        /// The status code of a failed item.
        public let errorCode: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil, failedItem: S3Resource? = nil) {
            self.errorMessage = errorMessage
            self.failedItem = failedItem
            self.errorCode = errorCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "errorMessage"
            case failedItem = "failedItem"
            case errorCode = "errorCode"
        }
    }

    public struct DisassociateS3ResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "failedS3Resources", required: false, type: .list)
        ]
        /// S3 resources that couldn't be removed from being monitored and classified by Amazon Macie. An error code and an error message are provided for each failed item. 
        public let failedS3Resources: [FailedS3Resource]?

        public init(failedS3Resources: [FailedS3Resource]? = nil) {
            self.failedS3Resources = failedS3Resources
        }

        private enum CodingKeys: String, CodingKey {
            case failedS3Resources = "failedS3Resources"
        }
    }

    public struct AssociateMemberAccountRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccountId", required: true, type: .string)
        ]
        /// The ID of the AWS account that you want to associate with Amazon Macie as a member account.
        public let memberAccountId: String

        public init(memberAccountId: String) {
            self.memberAccountId = memberAccountId
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId = "memberAccountId"
        }
    }

    public struct UpdateS3ResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccountId", required: false, type: .string), 
            AWSShapeMember(label: "s3ResourcesUpdate", required: true, type: .list)
        ]
        /// The AWS ID of the Amazon Macie member account whose S3 resources' classification types you want to update. 
        public let memberAccountId: String?
        /// The S3 resources whose classification types you want to update.
        public let s3ResourcesUpdate: [S3ResourceClassificationUpdate]

        public init(memberAccountId: String? = nil, s3ResourcesUpdate: [S3ResourceClassificationUpdate]) {
            self.memberAccountId = memberAccountId
            self.s3ResourcesUpdate = s3ResourcesUpdate
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccountId = "memberAccountId"
            case s3ResourcesUpdate = "s3ResourcesUpdate"
        }
    }

    public struct ListS3ResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "s3Resources", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// A list of the associated S3 resources returned by the action.
        public let s3Resources: [S3ResourceClassification]?
        /// When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. 
        public let nextToken: String?

        public init(nextToken: String? = nil, s3Resources: [S3ResourceClassification]? = nil) {
            self.s3Resources = s3Resources
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case s3Resources = "s3Resources"
            case nextToken = "nextToken"
        }
    }

    public struct ListMemberAccountsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberAccounts", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]
        /// A list of the Amazon Macie member accounts returned by the action. The current master account is also included in this list. 
        public let memberAccounts: [MemberAccount]?
        /// When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null. 
        public let nextToken: String?

        public init(memberAccounts: [MemberAccount]? = nil, nextToken: String? = nil) {
            self.memberAccounts = memberAccounts
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case memberAccounts = "memberAccounts"
            case nextToken = "nextToken"
        }
    }

}