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

import Foundation
import SotoCore

extension RecycleBin {
    // MARK: Enums

    public enum ResourceType: String, CustomStringConvertible, Codable {
        case ebsSnapshot = "EBS_SNAPSHOT"
        public var description: String { return self.rawValue }
    }

    public enum RetentionPeriodUnit: String, CustomStringConvertible, Codable {
        case days = "DAYS"
        public var description: String { return self.rawValue }
    }

    public enum RuleStatus: String, CustomStringConvertible, Codable {
        case available
        case pending
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateRuleRequest: AWSEncodableShape {
        /// A brief description for the retention rule.
        public let description: String?
        /// Information about the resource tags to use to identify resources that are to be retained by the retention rule. The retention rule retains only deleted snapshots that have one or more of the specified tag key and value pairs. If a snapshot is deleted, but it does not have any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule. You can add the same tag key and value pair to a maximum or five retention rules.
        public let resourceTags: [ResourceTag]?
        /// The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots are supported.
        public let resourceType: ResourceType
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod
        /// Information about the tags to assign to the retention rule.
        public let tags: [Tag]?

        public init(description: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType, retentionPeriod: RetentionPeriod, tags: [Tag]? = nil) {
            self.description = description
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S ]{0,255}$")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, min: 0)
            try self.retentionPeriod.validate(name: "\(name).retentionPeriod")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
            try self.validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case tags = "Tags"
        }
    }

    public struct CreateRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique identifier of the retention rule.
        public let identifier: String?
        /// Information about the resource tags used to identify resources that are retained by the retention rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available state retain snapshots.
        public let status: RuleStatus?
        /// The tags assigned to the retention rule.
        public let tags: [Tag]?

        public init(description: String? = nil, identifier: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil, tags: [Tag]? = nil) {
            self.description = description
            self.identifier = identifier
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
            case tags = "Tags"
        }
    }

    public struct DeleteRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri(locationName: "identifier"))
        ]

        /// The unique ID of the retention rule to delete.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "[0-9a-zA-Z]{11}")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteRuleResponse: AWSDecodableShape {
        public init() {}
    }

    public struct GetRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri(locationName: "identifier"))
        ]

        /// The unique ID of the retention rule.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "[0-9a-zA-Z]{11}")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRuleResponse: AWSDecodableShape {
        /// The description assigned to the retention rule.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// The resource tags used to identify resources that are to be retained by the retention rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule. Currently, only Amazon EBS snapshots are supported.
        public let resourceType: ResourceType?
        /// Information about the period for which the retention rule retains resources.
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available state retain snapshots.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }

    public struct ListRulesRequest: AWSEncodableShape {
        /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned nextToken value. This value can be between 5 and 500. If maxResults is given a larger value than 500, you receive an error.
        public let maxResults: Int?
        /// The token to use to retrieve the next page of results.
        public let nextToken: String?
        /// The tags used to identify resources that are to be retained by the retention rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule. Only retention rules that retain the specified resource type are listed.
        public let resourceType: ResourceType

        public init(maxResults: Int? = nil, nextToken: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceTags = resourceTags
            self.resourceType = resourceType
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]{1,2048}$")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
        }
    }

    public struct ListRulesResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// Information about the retention rules.
        public let rules: [RuleSummary]?

        public init(nextToken: String? = nil, rules: [RuleSummary]? = nil) {
            self.nextToken = nextToken
            self.rules = rules
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case rules = "Rules"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the resource for which to list the tags.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 0)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// Information about the tags assigned to the resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct ResourceTag: AWSEncodableShape & AWSDecodableShape {
        /// The tag key.
        public let resourceTagKey: String
        /// The tag value.
        public let resourceTagValue: String?

        public init(resourceTagKey: String, resourceTagValue: String? = nil) {
            self.resourceTagKey = resourceTagKey
            self.resourceTagValue = resourceTagValue
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceTagKey, name: "resourceTagKey", parent: name, pattern: "^[\\S\\s]{1,128}$")
            try self.validate(self.resourceTagValue, name: "resourceTagValue", parent: name, pattern: "^[\\S\\s]{0,256}$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceTagKey = "ResourceTagKey"
            case resourceTagValue = "ResourceTagValue"
        }
    }

    public struct RetentionPeriod: AWSEncodableShape & AWSDecodableShape {
        /// The unit of time in which the retention period is measured. Currently, only DAYS is supported.
        public let retentionPeriodUnit: RetentionPeriodUnit
        /// The period value for which the retention rule is to retain resources. The period is measured using the unit specified for RetentionPeriodUnit.
        public let retentionPeriodValue: Int

        public init(retentionPeriodUnit: RetentionPeriodUnit, retentionPeriodValue: Int) {
            self.retentionPeriodUnit = retentionPeriodUnit
            self.retentionPeriodValue = retentionPeriodValue
        }

        public func validate(name: String) throws {
            try self.validate(self.retentionPeriodValue, name: "retentionPeriodValue", parent: name, max: 3650)
            try self.validate(self.retentionPeriodValue, name: "retentionPeriodValue", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case retentionPeriodUnit = "RetentionPeriodUnit"
            case retentionPeriodValue = "RetentionPeriodValue"
        }
    }

    public struct RuleSummary: AWSDecodableShape {
        /// The description for the retention rule.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the retention period for which the retention rule retains resources
        public let retentionPeriod: RetentionPeriod?

        public init(description: String? = nil, identifier: String? = nil, retentionPeriod: RetentionPeriod? = nil) {
            self.description = description
            self.identifier = identifier
            self.retentionPeriod = retentionPeriod
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case retentionPeriod = "RetentionPeriod"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The tag key.
        public let key: String
        /// The tag value.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, min: 0)
            try self.validate(self.value, name: "value", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the resource to which to assign the tags.
        public let resourceArn: String
        /// Information about the tags to assign to the resource.
        public let tags: [Tag]

        public init(resourceArn: String, tags: [Tag]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 0)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
            try self.validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri(locationName: "resourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring(locationName: "tagKeys"))
        ]

        /// The Amazon Resource Name (ARN) of the resource from which to unassign the tags.
        public let resourceArn: String
        /// Information about the tags to unassign from the resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 0)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri(locationName: "identifier"))
        ]

        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule to update.
        public let identifier: String
        /// Information about the resource tags to use to identify resources that are to be retained by the retention rule. The retention rule retains only deleted snapshots that have one or more of the specified tag key and value pairs. If a snapshot is deleted, but it does not have any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule.  You can add the same tag key and value pair to a maximum or five retention rules.
        public let resourceTags: [ResourceTag]?
        /// The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots are supported.
        public let resourceType: ResourceType?
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod?

        public init(description: String? = nil, identifier: String, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil) {
            self.description = description
            self.identifier = identifier
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
        }

        public func validate(name: String) throws {
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S ]{0,255}$")
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "[0-9a-zA-Z]{11}")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, min: 0)
            try self.retentionPeriod?.validate(name: "\(name).retentionPeriod")
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
        }
    }

    public struct UpdateRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the resource tags used to identify resources that are retained by the retention rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available state retain snapshots.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }
}