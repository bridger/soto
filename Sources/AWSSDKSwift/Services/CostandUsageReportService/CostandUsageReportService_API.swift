// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
All public APIs for AWS Cost and Usage Report service
*/
public struct CostandUsageReportService {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSOrigamiServiceGatewayService",
            service: "cur",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-01-06",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CostandUsageReportServiceErrorType.self]
        )
    }

    ///  Describe a list of report definitions owned by the account
    public func describeReportDefinitions(_ input: DescribeReportDefinitionsRequest) throws -> DescribeReportDefinitionsResponse {
        return try client.send(operation: "DescribeReportDefinitions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Delete a specified report definition
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest) throws -> DeleteReportDefinitionResponse {
        return try client.send(operation: "DeleteReportDefinition", path: "/", httpMethod: "POST", input: input)
    }

    ///  Create a new report definition
    public func putReportDefinition(_ input: PutReportDefinitionRequest) throws -> PutReportDefinitionResponse {
        return try client.send(operation: "PutReportDefinition", path: "/", httpMethod: "POST", input: input)
    }


}