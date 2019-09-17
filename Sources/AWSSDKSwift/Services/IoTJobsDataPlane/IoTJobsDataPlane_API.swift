// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations.  To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both.  AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job
*/
public struct IoTJobsDataPlane {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "data.jobs.iot",
            signingName: "iot-jobs-data",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2017-09-29",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoTJobsDataPlaneErrorType.self]
        )
    }

    ///  Gets details of a job execution.
    public func describeJobExecution(_ input: DescribeJobExecutionRequest) -> Future<DescribeJobExecutionResponse> {
        return client.send(operation: "DescribeJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "GET", input: input)
    }

    ///  Gets the list of all jobs for a thing that are not in a terminal status.
    public func getPendingJobExecutions(_ input: GetPendingJobExecutionsRequest) -> Future<GetPendingJobExecutionsResponse> {
        return client.send(operation: "GetPendingJobExecutions", path: "/things/{thingName}/jobs", httpMethod: "GET", input: input)
    }

    ///  Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    public func startNextPendingJobExecution(_ input: StartNextPendingJobExecutionRequest) -> Future<StartNextPendingJobExecutionResponse> {
        return client.send(operation: "StartNextPendingJobExecution", path: "/things/{thingName}/jobs/$next", httpMethod: "PUT", input: input)
    }

    ///  Updates the status of a job execution.
    public func updateJobExecution(_ input: UpdateJobExecutionRequest) -> Future<UpdateJobExecutionResponse> {
        return client.send(operation: "UpdateJobExecution", path: "/things/{thingName}/jobs/{jobId}", httpMethod: "POST", input: input)
    }
}
