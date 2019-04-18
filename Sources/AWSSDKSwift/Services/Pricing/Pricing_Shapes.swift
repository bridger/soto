// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Pricing {

    public struct DescribeServicesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "FormatVersion", required: false, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ServiceCode", required: false, type: .string)
        ]
        /// The maximum number of results that you want returned in the response.
        public let maxResults: Int32?
        /// The format version that you want the response to be in. Valid values are: aws_v1 
        public let formatVersion: String?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The code for the service whose information you want to retrieve, such as AmazonEC2. You can use the ServiceCode to filter the results in a GetProducts call. To retrieve a list of all services, leave this blank.
        public let serviceCode: String?

        public init(formatVersion: String? = nil, maxResults: Int32? = nil, nextToken: String? = nil, serviceCode: String? = nil) {
            self.maxResults = maxResults
            self.formatVersion = formatVersion
            self.nextToken = nextToken
            self.serviceCode = serviceCode
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case formatVersion = "FormatVersion"
            case nextToken = "NextToken"
            case serviceCode = "ServiceCode"
        }
    }

    public struct DescribeServicesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FormatVersion", required: false, type: .string), 
            AWSShapeMember(label: "Services", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The format version of the response. For example, aws_v1.
        public let formatVersion: String?
        /// The service metadata for the service or services in the response.
        public let services: [Service]?
        /// The pagination token for the next set of retreivable results.
        public let nextToken: String?

        public init(formatVersion: String? = nil, nextToken: String? = nil, services: [Service]? = nil) {
            self.formatVersion = formatVersion
            self.services = services
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case formatVersion = "FormatVersion"
            case services = "Services"
            case nextToken = "NextToken"
        }
    }

    public struct Filter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Field", required: true, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// The service code or attribute value that you want to filter by. If you are filtering by service code this is the actual service code, such as AmazonEC2. If you are filtering by attribute name, this is the attribute value that you want the returned products to match, such as a Provisioned IOPS volume.
        public let value: String
        /// The product metadata field that you want to filter on. You can filter by just the service code to see all products for a specific service, filter by just the attribute name to see a specific attribute for multiple services, or use both a service code and an attribute name to retrieve only products that match both fields. Valid values include: ServiceCode, and all attribute names For example, you can filter by the AmazonEC2 service code and the volumeType attribute name to get the prices for only Amazon EC2 volumes.
        public let field: String
        /// The type of filter that you want to use. Valid values are: TERM_MATCH. TERM_MATCH returns only products that match both the given filter field and the given value.
        public let `type`: FilterType

        public init(field: String, type: FilterType, value: String) {
            self.value = value
            self.field = field
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case field = "Field"
            case `type` = "Type"
        }
    }

    public enum FilterType: String, CustomStringConvertible, Codable {
        case termMatch = "TERM_MATCH"
        public var description: String { return self.rawValue }
    }

    public struct GetAttributeValuesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "AttributeValues", required: false, type: .list)
        ]
        /// The pagination token that indicates the next set of results to retrieve.
        public let nextToken: String?
        /// The list of values for an attribute. For example, Throughput Optimized HDD and Provisioned IOPS are two available values for the AmazonEC2 volumeType.
        public let attributeValues: [AttributeValue]?

        public init(attributeValues: [AttributeValue]? = nil, nextToken: String? = nil) {
            self.nextToken = nextToken
            self.attributeValues = attributeValues
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case attributeValues = "AttributeValues"
        }
    }

    public struct GetAttributeValuesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "AttributeName", required: true, type: .string), 
            AWSShapeMember(label: "ServiceCode", required: true, type: .string)
        ]
        /// The maximum number of results to return in response.
        public let maxResults: Int32?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The name of the attribute that you want to retrieve the values for, such as volumeType.
        public let attributeName: String
        /// The service code for the service whose attributes you want to retrieve. For example, if you want the retrieve an EC2 attribute, use AmazonEC2.
        public let serviceCode: String

        public init(attributeName: String, maxResults: Int32? = nil, nextToken: String? = nil, serviceCode: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.attributeName = attributeName
            self.serviceCode = serviceCode
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case attributeName = "AttributeName"
            case serviceCode = "ServiceCode"
        }
    }

    public struct GetProductsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PriceList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "FormatVersion", required: false, type: .string)
        ]
        /// The list of products that match your filters. The list contains both the product metadata and the price information.
        public let priceList: [String]?
        /// The pagination token that indicates the next set of results to retrieve.
        public let nextToken: String?
        /// The format version of the response. For example, aws_v1.
        public let formatVersion: String?

        public init(formatVersion: String? = nil, nextToken: String? = nil, priceList: [String]? = nil) {
            self.priceList = priceList
            self.nextToken = nextToken
            self.formatVersion = formatVersion
        }

        private enum CodingKeys: String, CodingKey {
            case priceList = "PriceList"
            case nextToken = "NextToken"
            case formatVersion = "FormatVersion"
        }
    }

    public struct GetProductsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ServiceCode", required: false, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "FormatVersion", required: false, type: .string), 
            AWSShapeMember(label: "Filters", required: false, type: .list)
        ]
        /// The code for the service whose products you want to retrieve. 
        public let serviceCode: String?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The maximum number of results to return in the response.
        public let maxResults: Int32?
        /// The format version that you want the response to be in. Valid values are: aws_v1 
        public let formatVersion: String?
        /// The list of filters that limit the returned products. only products that match all filters are returned.
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil, formatVersion: String? = nil, maxResults: Int32? = nil, nextToken: String? = nil, serviceCode: String? = nil) {
            self.serviceCode = serviceCode
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.formatVersion = formatVersion
            self.filters = filters
        }

        private enum CodingKeys: String, CodingKey {
            case serviceCode = "ServiceCode"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case formatVersion = "FormatVersion"
            case filters = "Filters"
        }
    }

    public struct Service: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttributeNames", required: false, type: .list), 
            AWSShapeMember(label: "ServiceCode", required: false, type: .string)
        ]
        /// The attributes that are available for this service.
        public let attributeNames: [String]?
        /// The code for the AWS service.
        public let serviceCode: String?

        public init(attributeNames: [String]? = nil, serviceCode: String? = nil) {
            self.attributeNames = attributeNames
            self.serviceCode = serviceCode
        }

        private enum CodingKeys: String, CodingKey {
            case attributeNames = "AttributeNames"
            case serviceCode = "ServiceCode"
        }
    }

    public struct AttributeValue: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: false, type: .string)
        ]
        /// The specific value of an attributeName.
        public let value: String?

        public init(value: String? = nil) {
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }

}