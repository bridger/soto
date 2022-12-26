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

import Foundation
import SotoCore

extension MarketplaceCommerceAnalytics {
    // MARK: Enums

    public enum DataSetType: String, CustomStringConvertible, Codable, _SotoSendable {
        case customerProfileByGeography = "customer_profile_by_geography"
        case customerProfileByIndustry = "customer_profile_by_industry"
        case customerProfileByRevenue = "customer_profile_by_revenue"
        case customerSubscriberAnnualSubscriptions = "customer_subscriber_annual_subscriptions"
        case customerSubscriberHourlyMonthlySubscriptions = "customer_subscriber_hourly_monthly_subscriptions"
        case dailyBusinessCanceledProductSubscribers = "daily_business_canceled_product_subscribers"
        case dailyBusinessFees = "daily_business_fees"
        case dailyBusinessFreeTrialConversions = "daily_business_free_trial_conversions"
        case dailyBusinessNewInstances = "daily_business_new_instances"
        case dailyBusinessNewProductSubscribers = "daily_business_new_product_subscribers"
        case dailyBusinessUsageByInstanceType = "daily_business_usage_by_instance_type"
        case disbursedAmountByAgeOfDisbursedFunds = "disbursed_amount_by_age_of_disbursed_funds"
        case disbursedAmountByAgeOfPastDueFunds = "disbursed_amount_by_age_of_past_due_funds"
        case disbursedAmountByAgeOfUncollectedFunds = "disbursed_amount_by_age_of_uncollected_funds"
        case disbursedAmountByCustomerGeo = "disbursed_amount_by_customer_geo"
        case disbursedAmountByInstanceHours = "disbursed_amount_by_instance_hours"
        case disbursedAmountByProduct = "disbursed_amount_by_product"
        case disbursedAmountByProductWithUncollectedFunds = "disbursed_amount_by_product_with_uncollected_funds"
        case disbursedAmountByUncollectedFundsBreakdown = "disbursed_amount_by_uncollected_funds_breakdown"
        case monthlyRevenueAnnualSubscriptions = "monthly_revenue_annual_subscriptions"
        case monthlyRevenueBillingAndRevenueData = "monthly_revenue_billing_and_revenue_data"
        case monthlyRevenueFieldDemonstrationUsage = "monthly_revenue_field_demonstration_usage"
        case monthlyRevenueFlexiblePaymentSchedule = "monthly_revenue_flexible_payment_schedule"
        case salesCompensationBilledRevenue = "sales_compensation_billed_revenue"
        case usSalesAndUseTaxRecords = "us_sales_and_use_tax_records"
        public var description: String { return self.rawValue }
    }

    public enum SupportDataSetType: String, CustomStringConvertible, Codable, _SotoSendable {
        case customerSupportContactsData = "customer_support_contacts_data"
        case testCustomerSupportContactsData = "test_customer_support_contacts_data"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct GenerateDataSetRequest: AWSEncodableShape {
        /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
        public let customerDefinedValues: [String: String]?
        /// The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For monthly data sets except those with prefix disbursed_amount, provide a date with month-level granularity for the desired month (the day value will be ignored). For data sets with prefix disbursed_amount, provide a date with day-level granularity for the desired day. For these data sets we will look backwards in time over the range of 31 days until the first data set is found (the latest one).
        public let dataSetPublicationDate: Date
        /// The desired data set type.    customer_subscriber_hourly_monthly_subscriptions From 2017-09-15 to present: Available daily by 24:00 UTC.   customer_subscriber_annual_subscriptions From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_usage_by_instance_type From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_fees From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_free_trial_conversions From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_new_instances From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_new_product_subscribers From 2017-09-15 to present: Available daily by 24:00 UTC.   daily_business_canceled_product_subscribers From 2017-09-15 to present: Available daily by 24:00 UTC.   monthly_revenue_billing_and_revenue_data From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior.   monthly_revenue_annual_subscriptions From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes up-front software charges (e.g. annual) from one month prior.   monthly_revenue_field_demonstration_usage From 2018-03-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.   monthly_revenue_flexible_payment_schedule From 2018-11-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.   disbursed_amount_by_product From 2017-09-15 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_instance_hours From 2017-09-15 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_customer_geo From 2017-09-15 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_age_of_uncollected_funds From 2017-09-15 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_age_of_disbursed_funds From 2017-09-15 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_age_of_past_due_funds From 2018-04-07 to present: Available every 30 days by 24:00 UTC.   disbursed_amount_by_uncollected_funds_breakdown From 2019-10-04 to present: Available every 30 days by 24:00 UTC.   sales_compensation_billed_revenue From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.   us_sales_and_use_tax_records From 2017-09-15 to present: Available monthly on the 15th day of the month by 24:00 UTC.   disbursed_amount_by_product_with_uncollected_funds This data set is deprecated. Download related reports from AMMP instead!   customer_profile_by_industry This data set is deprecated. Download related reports from AMMP instead!   customer_profile_by_revenue This data set is deprecated. Download related reports from AMMP instead!   customer_profile_by_geography This data set is deprecated. Download related reports from AMMP instead!
        public let dataSetType: DataSetType
        /// The name (friendly name, not ARN) of the destination S3 bucket.
        public let destinationS3BucketName: String
        /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
        public let destinationS3Prefix: String?
        /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
        public let roleNameArn: String
        /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
        public let snsTopicArn: String

        public init(customerDefinedValues: [String: String]? = nil, dataSetPublicationDate: Date, dataSetType: DataSetType, destinationS3BucketName: String, destinationS3Prefix: String? = nil, roleNameArn: String, snsTopicArn: String) {
            self.customerDefinedValues = customerDefinedValues
            self.dataSetPublicationDate = dataSetPublicationDate
            self.dataSetType = dataSetType
            self.destinationS3BucketName = destinationS3BucketName
            self.destinationS3Prefix = destinationS3Prefix
            self.roleNameArn = roleNameArn
            self.snsTopicArn = snsTopicArn
        }

        public func validate(name: String) throws {
            try self.customerDefinedValues?.forEach {
                try validate($0.key, name: "customerDefinedValues.key", parent: name, max: 255)
                try validate($0.key, name: "customerDefinedValues.key", parent: name, min: 1)
                try validate($0.value, name: "customerDefinedValues[\"\($0.key)\"]", parent: name, max: 255)
                try validate($0.value, name: "customerDefinedValues[\"\($0.key)\"]", parent: name, min: 1)
            }
            try self.validate(self.customerDefinedValues, name: "customerDefinedValues", parent: name, max: 5)
            try self.validate(self.customerDefinedValues, name: "customerDefinedValues", parent: name, min: 1)
            try self.validate(self.destinationS3BucketName, name: "destinationS3BucketName", parent: name, min: 1)
            try self.validate(self.roleNameArn, name: "roleNameArn", parent: name, min: 1)
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case customerDefinedValues
            case dataSetPublicationDate
            case dataSetType
            case destinationS3BucketName
            case destinationS3Prefix
            case roleNameArn
            case snsTopicArn
        }
    }

    public struct GenerateDataSetResult: AWSDecodableShape {
        /// A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
        public let dataSetRequestId: String?

        public init(dataSetRequestId: String? = nil) {
            self.dataSetRequestId = dataSetRequestId
        }

        private enum CodingKeys: String, CodingKey {
            case dataSetRequestId
        }
    }

    public struct StartSupportDataExportRequest: AWSEncodableShape {
        /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
        public let customerDefinedValues: [String: String]?
        ///  Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time.    customer_support_contacts_data Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter. test_customer_support_contacts_data An example data set containing static test data in the same format as customer_support_contacts_data
        public let dataSetType: SupportDataSetType
        /// The name (friendly name, not ARN) of the destination S3 bucket.
        public let destinationS3BucketName: String
        /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
        public let destinationS3Prefix: String?
        /// The start date from which to retrieve the data set in UTC.  This parameter only affects the customer_support_contacts_data data set type.
        public let fromDate: Date
        /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
        public let roleNameArn: String
        /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
        public let snsTopicArn: String

        public init(customerDefinedValues: [String: String]? = nil, dataSetType: SupportDataSetType, destinationS3BucketName: String, destinationS3Prefix: String? = nil, fromDate: Date, roleNameArn: String, snsTopicArn: String) {
            self.customerDefinedValues = customerDefinedValues
            self.dataSetType = dataSetType
            self.destinationS3BucketName = destinationS3BucketName
            self.destinationS3Prefix = destinationS3Prefix
            self.fromDate = fromDate
            self.roleNameArn = roleNameArn
            self.snsTopicArn = snsTopicArn
        }

        public func validate(name: String) throws {
            try self.customerDefinedValues?.forEach {
                try validate($0.key, name: "customerDefinedValues.key", parent: name, max: 255)
                try validate($0.key, name: "customerDefinedValues.key", parent: name, min: 1)
                try validate($0.value, name: "customerDefinedValues[\"\($0.key)\"]", parent: name, max: 255)
                try validate($0.value, name: "customerDefinedValues[\"\($0.key)\"]", parent: name, min: 1)
            }
            try self.validate(self.customerDefinedValues, name: "customerDefinedValues", parent: name, max: 5)
            try self.validate(self.customerDefinedValues, name: "customerDefinedValues", parent: name, min: 1)
            try self.validate(self.destinationS3BucketName, name: "destinationS3BucketName", parent: name, min: 1)
            try self.validate(self.roleNameArn, name: "roleNameArn", parent: name, min: 1)
            try self.validate(self.snsTopicArn, name: "snsTopicArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case customerDefinedValues
            case dataSetType
            case destinationS3BucketName
            case destinationS3Prefix
            case fromDate
            case roleNameArn
            case snsTopicArn
        }
    }

    public struct StartSupportDataExportResult: AWSDecodableShape {
        /// A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
        public let dataSetRequestId: String?

        public init(dataSetRequestId: String? = nil) {
            self.dataSetRequestId = dataSetRequestId
        }

        private enum CodingKeys: String, CodingKey {
            case dataSetRequestId
        }
    }
}

// MARK: - Errors

/// Error enum for MarketplaceCommerceAnalytics
public struct MarketplaceCommerceAnalyticsErrorType: AWSErrorType {
    enum Code: String {
        case marketplaceCommerceAnalyticsException = "MarketplaceCommerceAnalyticsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceCommerceAnalytics
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// This exception is thrown when an internal service error occurs.
    public static var marketplaceCommerceAnalyticsException: Self { .init(.marketplaceCommerceAnalyticsException) }
}

extension MarketplaceCommerceAnalyticsErrorType: Equatable {
    public static func == (lhs: MarketplaceCommerceAnalyticsErrorType, rhs: MarketplaceCommerceAnalyticsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceCommerceAnalyticsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
