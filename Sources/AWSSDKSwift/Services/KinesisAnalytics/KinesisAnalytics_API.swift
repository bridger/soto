// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**

*/
public struct KinesisAnalytics {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "KinesisAnalytics_20150814",
            service: "kinesisanalytics",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-08-14",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [KinesisAnalyticsErrorType.self]
        )
    }

    ///  Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination. This operation requires permissions to perform the kinesisanalytics:DeleteApplicationOutput action.
    public func deleteApplicationOutput(_ input: DeleteApplicationOutputRequest) throws -> DeleteApplicationOutputResponse {
        return try client.send(operation: "DeleteApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the HasMoreApplications value as true, you can send another request by adding the ExclusiveStartApplicationName in the request body, and set the value of this to the last application name from the previous response.  If you want detailed information about a specific application, use DescribeApplication. This operation requires permissions to perform the kinesisanalytics:ListApplications action.
    public func listApplications(_ input: ListApplicationsRequest) throws -> ListApplicationsResponse {
        return try client.send(operation: "ListApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a reference data source configuration from the specified application configuration. If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation.  This operation requires permissions to perform the kinesisanalytics.DeleteApplicationReferenceDataSource action.
    public func deleteApplicationReferenceDataSource(_ input: DeleteApplicationReferenceDataSourceRequest) throws -> DeleteApplicationReferenceDataSourceResponse {
        return try client.send(operation: "DeleteApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an InputProcessingConfiguration to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.
    public func addApplicationInputProcessingConfiguration(_ input: AddApplicationInputProcessingConfigurationRequest) throws -> AddApplicationInputProcessingConfigurationResponse {
        return try client.send(operation: "AddApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an InputProcessingConfiguration from an input.
    public func deleteApplicationInputProcessingConfiguration(_ input: DeleteApplicationInputProcessingConfigurationRequest) throws -> DeleteApplicationInputProcessingConfigurationResponse {
        return try client.send(operation: "DeleteApplicationInputProcessingConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific Amazon Kinesis Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation. This operation requires permissions to perform the kinesisanalytics:DescribeApplication action. You can use DescribeApplication to get the current application versionId, which you need to call other operations such as Update. 
    public func describeApplication(_ input: DescribeApplicationRequest) throws -> DescribeApplicationResponse {
        return try client.send(operation: "DescribeApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see Configuring Application Input. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface.   This operation requires permissions to perform the kinesisanalytics:DiscoverInputSchema action. 
    public func discoverInputSchema(_ input: DiscoverInputSchemaRequest) throws -> DiscoverInputSchemaResponse {
        return try client.send(operation: "DiscoverInputSchema", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration.  Note that Amazon Kinesis Analytics updates the CurrentApplicationVersionId each time you update your application.  This operation requires permission for the kinesisanalytics:UpdateApplication action.
    public func updateApplication(_ input: UpdateApplicationRequest) throws -> UpdateApplicationResponse {
        return try client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a reference data source to an existing application. Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.  For conceptual information, see Configuring Application Input. For the limits on data sources you can add to your application, see Limits.   This operation requires permissions to perform the kinesisanalytics:AddApplicationOutput action. 
    public func addApplicationReferenceDataSource(_ input: AddApplicationReferenceDataSourceRequest) throws -> AddApplicationReferenceDataSourceResponse {
        return try client.send(operation: "AddApplicationReferenceDataSource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application. After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.  The application status must be READY for you to start an application. You can get the application status in the console or using the DescribeApplication operation. After you start the application, you can stop the application from processing the input by calling the StopApplication operation. This operation requires permissions to perform the kinesisanalytics:StartApplication action.
    public func startApplication(_ input: StartApplicationRequest) throws -> StartApplicationResponse {
        return try client.send(operation: "StartApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds an external destination to your Amazon Kinesis Analytics application. If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For more information, see Understanding Application Output (Destination).   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version. For the limits on the number of application inputs and outputs you can configure, see Limits. This operation requires permissions to perform the kinesisanalytics:AddApplicationOutput action.
    public func addApplicationOutput(_ input: AddApplicationOutputRequest) throws -> AddApplicationOutputResponse {
        return try client.send(operation: "AddApplicationOutput", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see Working with Amazon CloudWatch Logs.
    public func deleteApplicationCloudWatchLoggingOption(_ input: DeleteApplicationCloudWatchLoggingOptionRequest) throws -> DeleteApplicationCloudWatchLoggingOptionResponse {
        return try client.send(operation: "DeleteApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see Working with Amazon CloudWatch Logs.
    public func addApplicationCloudWatchLoggingOption(_ input: AddApplicationCloudWatchLoggingOptionRequest) throws -> AddApplicationCloudWatchLoggingOptionResponse {
        return try client.send(operation: "AddApplicationCloudWatchLoggingOption", path: "/", httpMethod: "POST", input: input)
    }

    ///   Adds a streaming source to your Amazon Kinesis application. For conceptual information, see Configuring Application Input.  You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.  This operation requires permissions to perform the kinesisanalytics:AddApplicationInput action.
    public func addApplicationInput(_ input: AddApplicationInputRequest) throws -> AddApplicationInputResponse {
        return try client.send(operation: "AddApplicationInput", path: "/", httpMethod: "POST", input: input)
    }

    ///   Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see How it Works.  In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source. Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps. In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.  To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the kinesisanalytics:CreateApplication action.   For introductory exercises to create an Amazon Kinesis Analytics application, see Getting Started. 
    public func createApplication(_ input: CreateApplicationRequest) throws -> CreateApplicationResponse {
        return try client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination.  This operation requires permissions to perform the kinesisanalytics:StopApplication action.
    public func stopApplication(_ input: StopApplicationRequest) throws -> StopApplicationResponse {
        return try client.send(operation: "StopApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code). This operation requires permissions to perform the kinesisanalytics:DeleteApplication action.
    public func deleteApplication(_ input: DeleteApplicationRequest) throws -> DeleteApplicationResponse {
        return try client.send(operation: "DeleteApplication", path: "/", httpMethod: "POST", input: input)
    }


}