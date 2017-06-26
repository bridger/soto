// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import AWSSDKSwiftCore

/**
AWS Config AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an Elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see Supported AWS Resources. You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config. The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see Signature Version 4 Signing Process. For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see What Is AWS Config? in the AWS Config Developer Guide.
*/
public struct Config {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "StarlingDoveService",
            service: "config",
            serviceProtocol: .json,
            apiVersion: "2014-11-12",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ConfigError.self]
        )
    }

    ///  Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.  Currently, you can specify only one delivery channel per region in your account. 
    public func describeDeliveryChannelStatus(_ input: DescribeDeliveryChannelStatusRequest) throws -> DescribeDeliveryChannelStatusResponse {
        return try client.send(operation: "DescribeDeliveryChannelStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with. A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules. If AWS Config has no current evaluation results for the resource, it returns INSUFFICIENT_DATA. This result might indicate one of the following conditions about the rules that evaluate the resource:   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the config:PutEvaluations permission.   The rule's AWS Lambda function has returned NOT_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.  
    public func describeComplianceByResource(_ input: DescribeComplianceByResourceRequest) throws -> DescribeComplianceByResourceResponse {
        return try client.send(operation: "DescribeComplianceByResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
    public func getComplianceSummaryByConfigRule() throws -> GetComplianceSummaryByConfigRuleResponse {
        return try client.send(operation: "GetComplianceSummaryByConfigRule", path: "/", httpMethod: "POST")
    }

    ///  Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic. Before you can create a delivery channel, you must create a configuration recorder. You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.  You can have only one delivery channel per region in your account. 
    public func putDeliveryChannel(_ input: PutDeliveryChannelRequest) throws {
        _ = try client.send(operation: "PutDeliveryChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.
    public func getComplianceDetailsByConfigRule(_ input: GetComplianceDetailsByConfigRuleRequest) throws -> GetComplianceDetailsByConfigRuleResponse {
        return try client.send(operation: "GetComplianceDetailsByConfigRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.
    public func getComplianceDetailsByResource(_ input: GetComplianceDetailsByResourceRequest) throws -> GetComplianceDetailsByResourceResponse {
        return try client.send(operation: "GetComplianceDetailsByResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the delivery channel. Before you can delete the delivery channel, you must stop the configuration recorder by using the StopConfigurationRecorder action.
    public func deleteDeliveryChannel(_ input: DeleteDeliveryChannelRequest) throws {
        _ = try client.send(operation: "DeleteDeliveryChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.
    public func describeConfigRuleEvaluationStatus(_ input: DescribeConfigRuleEvaluationStatusRequest) throws -> DescribeConfigRuleEvaluationStatusResponse {
        return try client.send(operation: "DescribeConfigRuleEvaluationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends following notifications using an Amazon SNS topic that you have specified.   Notification of starting the delivery.   Notification of delivery completed, if the delivery was successfully completed.   Notification of delivery failure, if the delivery failed to complete.  
    public func deliverConfigSnapshot(_ input: DeliverConfigSnapshotRequest) throws -> DeliverConfigSnapshotResponse {
        return try client.send(operation: "DeliverConfigSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. The response is paginated, and by default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the limit parameter. The response includes a nextToken string, and to get the next page of results, run the request again and enter this string for the nextToken parameter.  Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified limit. In such cases, you can make another call, using the nextToken. 
    public func getResourceConfigHistory(_ input: GetResourceConfigHistoryRequest) throws -> GetResourceConfigHistoryResponse {
        return try client.send(operation: "GetResourceConfigHistory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new configuration recorder to record the selected resource configurations. You can use this action to change the role roleARN and/or the recordingGroup of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.  Currently, you can specify only one configuration recorder per region in your account. If ConfigurationRecorder does not have the recordingGroup parameter specified, the default is to record all supported resource types. 
    public func putConfigurationRecorder(_ input: PutConfigurationRecorderRequest) throws {
        _ = try client.send(operation: "PutConfigurationRecorder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.  Currently, you can specify only one configuration recorder per region in your account. 
    public func describeConfigurationRecorders(_ input: DescribeConfigurationRecordersRequest) throws -> DescribeConfigurationRecordersResponse {
        return try client.send(operation: "DescribeConfigurationRecorders", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.  Currently, you can specify only one delivery channel per region in your account. 
    public func describeDeliveryChannels(_ input: DescribeDeliveryChannelsRequest) throws -> DescribeDeliveryChannelsResponse {
        return try client.send(operation: "DescribeDeliveryChannels", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations. You can use this action for custom Config rules and AWS managed Config rules. A custom Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides. If you are adding a new custom Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the PutConfigRule action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the SourceIdentifier key. This key is part of the Source object, which is part of the ConfigRule object.  If you are adding a new AWS managed Config rule, specify the rule's identifier for the SourceIdentifier key. To reference AWS managed Config rule identifiers, see Using AWS Managed Config Rules. For any new rule that you add, specify the ConfigRuleName in the ConfigRule object. Do not specify the ConfigRuleArn or the ConfigRuleId. These values are generated by AWS Config for new rules. If you are updating a rule that you added previously, you can specify the rule by ConfigRuleName, ConfigRuleId, or ConfigRuleArn in the ConfigRule data type that you use in this request. The maximum number of rules that AWS Config supports is 50. For more information about requesting a rule limit increase, see AWS Config Limits in the AWS General Reference Guide. For more information about developing and using AWS Config rules, see Evaluating AWS Resource Configurations with AWS Config in the AWS Config Developer Guide.
    public func putConfigRule(_ input: PutConfigRuleRequest) throws {
        _ = try client.send(operation: "PutConfigRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts recording configurations of the AWS resources you have selected to record in your AWS account. You must have created at least one delivery channel to successfully start the configuration recorder.
    public func startConfigurationRecorder(_ input: StartConfigurationRecorderRequest) throws {
        _ = try client.send(operation: "StartConfigurationRecorder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule. A rule is compliant if all of the evaluated resources comply with it, and it is noncompliant if any of these resources do not comply. If AWS Config has no current evaluation results for the rule, it returns INSUFFICIENT_DATA. This result might indicate one of the following conditions:   AWS Config has never invoked an evaluation for the rule. To check whether it has, use the DescribeConfigRuleEvaluationStatus action to get the LastSuccessfulInvocationTime and LastFailedInvocationTime.   The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the config:PutEvaluations permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the config:PutEvaluations permission.   The rule's AWS Lambda function has returned NOT_APPLICABLE for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.  
    public func describeComplianceByConfigRule(_ input: DescribeComplianceByConfigRuleRequest) throws -> DescribeComplianceByConfigRuleResponse {
        return try client.send(operation: "DescribeComplianceByConfigRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops recording configurations of the AWS resources you have selected to record in your AWS account.
    public func stopConfigurationRecorder(_ input: StopConfigurationRecorderRequest) throws {
        _ = try client.send(operation: "StopConfigurationRecorder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.
    public func putEvaluations(_ input: PutEvaluationsRequest) throws -> PutEvaluationsResponse {
        return try client.send(operation: "PutEvaluations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns details about your AWS Config rules.
    public func describeConfigRules(_ input: DescribeConfigRulesRequest) throws -> DescribeConfigRulesResponse {
        return try client.send(operation: "DescribeConfigRules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorder associated with the account.  Currently, you can specify only one configuration recorder per region in your account. 
    public func describeConfigurationRecorderStatus(_ input: DescribeConfigurationRecorderStatusRequest) throws -> DescribeConfigurationRecorderStatusResponse {
        return try client.send(operation: "DescribeConfigurationRecorderStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the configuration recorder. After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder. This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the GetResourceConfigHistory action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.
    public func deleteConfigurationRecorder(_ input: DeleteConfigurationRecorderRequest) throws {
        _ = try client.send(operation: "DeleteConfigurationRecorder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the StartConfigRulesEvaluation API to start evaluating your AWS resources against the rule.
    public func deleteEvaluationResults(_ input: DeleteEvaluationResultsRequest) throws -> DeleteEvaluationResultsResponse {
        return try client.send(operation: "DeleteEvaluationResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.
    public func getComplianceSummaryByResourceType(_ input: GetComplianceSummaryByResourceTypeRequest) throws -> GetComplianceSummaryByResourceTypeResponse {
        return try client.send(operation: "GetComplianceSummaryByResourceType", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.  You can specify either resource IDs or a resource name but not both in the same request.  The response is paginated, and by default AWS Config lists 100 resource identifiers on each page. You can customize this number with the limit parameter. The response includes a nextToken string, and to get the next page of results, run the request again and enter this string for the nextToken parameter.
    public func listDiscoveredResources(_ input: ListDiscoveredResourcesRequest) throws -> ListDiscoveredResourcesResponse {
        return try client.send(operation: "ListDiscoveredResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified AWS Config rule and all of its evaluation results. AWS Config sets the state of a rule to DELETING until the deletion is complete. You cannot update a rule while it is in this state. If you make a PutConfigRule or DeleteConfigRule request for the rule, you will receive a ResourceInUseException. You can check the state of a rule by using the DescribeConfigRules request.
    public func deleteConfigRule(_ input: DeleteConfigRuleRequest) throws {
        _ = try client.send(operation: "DeleteConfigRule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use StartConfigRulesEvaluation when you want to test a rule that you updated is working as expected. StartConfigRulesEvaluation does not re-record the latest configuration state for your resources; it re-runs an evaluation against the last known state of your resources.  You can specify up to 25 Config rules per request.  An existing StartConfigRulesEvaluation call must complete for the specified rules before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a ConfigRuleEvaluationStarted notification when the evaluation starts.  You don't need to call the StartConfigRulesEvaluation API to run an evaluation for a new rule. When you create a new rule, AWS Config automatically evaluates your resources against the rule.   The StartConfigRulesEvaluation API is useful if you want to run on-demand evaluations, such as the following example:   You have a custom rule that evaluates your IAM resources every 24 hours.   You update your Lambda function to add additional conditions to your rule.   Instead of waiting for the next periodic evaluation, you call the StartConfigRulesEvaluation API.   AWS Config invokes your Lambda function and evaluates your IAM resources.   Your custom rule will still run periodic evaluations every 24 hours.  
    public func startConfigRulesEvaluation(_ input: StartConfigRulesEvaluationRequest) throws -> StartConfigRulesEvaluationResponse {
        return try client.send(operation: "StartConfigRulesEvaluation", path: "/", httpMethod: "POST", input: input)
    }


}