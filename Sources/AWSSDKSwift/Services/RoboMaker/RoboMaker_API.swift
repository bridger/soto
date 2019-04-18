// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
his section provides documentation for the AWS RoboMaker API operations.
*/
public struct RoboMaker {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "robomaker",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-06-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [RoboMakerErrorType.self]
        )
    }

    ///  Returns a list of simulation jobs. You can optionally provide filters to retrieve specific simulation jobs.
    public func listSimulationJobs(_ input: ListSimulationJobsRequest) throws -> ListSimulationJobsResponse {
        return try client.send(operation: "ListSimulationJobs", path: "/listSimulationJobs", httpMethod: "POST", input: input)
    }

    ///  Deregisters a robot.
    public func deregisterRobot(_ input: DeregisterRobotRequest) throws -> DeregisterRobotResponse {
        return try client.send(operation: "DeregisterRobot", path: "/deregisterRobot", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation job.
    public func createSimulationJob(_ input: CreateSimulationJobRequest) throws -> CreateSimulationJobResponse {
        return try client.send(operation: "CreateSimulationJob", path: "/createSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Returns a list of simulation applications. You can optionally provide filters to retrieve specific simulation applications.
    public func listSimulationApplications(_ input: ListSimulationApplicationsRequest) throws -> ListSimulationApplicationsResponse {
        return try client.send(operation: "ListSimulationApplications", path: "/listSimulationApplications", httpMethod: "POST", input: input)
    }

    ///  Describes a deployment job. [Does it work regardless of deployment status, e.g. Failed?]
    public func describeDeploymentJob(_ input: DescribeDeploymentJobRequest) throws -> DescribeDeploymentJobResponse {
        return try client.send(operation: "DescribeDeploymentJob", path: "/describeDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Describes a fleet.
    public func describeFleet(_ input: DescribeFleetRequest) throws -> DescribeFleetResponse {
        return try client.send(operation: "DescribeFleet", path: "/describeFleet", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation application.
    public func createSimulationApplication(_ input: CreateSimulationApplicationRequest) throws -> CreateSimulationApplicationResponse {
        return try client.send(operation: "CreateSimulationApplication", path: "/createSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Describes a robot application.
    public func describeRobotApplication(_ input: DescribeRobotApplicationRequest) throws -> DescribeRobotApplicationResponse {
        return try client.send(operation: "DescribeRobotApplication", path: "/describeRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Creates a simulation application with a specific revision id.
    public func createSimulationApplicationVersion(_ input: CreateSimulationApplicationVersionRequest) throws -> CreateSimulationApplicationVersionResponse {
        return try client.send(operation: "CreateSimulationApplicationVersion", path: "/createSimulationApplicationVersion", httpMethod: "POST", input: input)
    }

    ///  Describes a simulation job.
    public func describeSimulationJob(_ input: DescribeSimulationJobRequest) throws -> DescribeSimulationJobResponse {
        return try client.send(operation: "DescribeSimulationJob", path: "/describeSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Registers a robot with a fleet.
    public func registerRobot(_ input: RegisterRobotRequest) throws -> RegisterRobotResponse {
        return try client.send(operation: "RegisterRobot", path: "/registerRobot", httpMethod: "POST", input: input)
    }

    ///  Deletes a robot.
    public func deleteRobot(_ input: DeleteRobotRequest) throws -> DeleteRobotResponse {
        return try client.send(operation: "DeleteRobot", path: "/deleteRobot", httpMethod: "POST", input: input)
    }

    ///  Creates a deployment job.
    public func createDeploymentJob(_ input: CreateDeploymentJobRequest) throws -> CreateDeploymentJobResponse {
        return try client.send(operation: "CreateDeploymentJob", path: "/createDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Creates a fleet, a logical group of robots running the same robot application.
    public func createFleet(_ input: CreateFleetRequest) throws -> CreateFleetResponse {
        return try client.send(operation: "CreateFleet", path: "/createFleet", httpMethod: "POST", input: input)
    }

    ///  Restarts a running simulation job.
    public func restartSimulationJob(_ input: RestartSimulationJobRequest) throws -> RestartSimulationJobResponse {
        return try client.send(operation: "RestartSimulationJob", path: "/restartSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Deletes a fleet.
    public func deleteFleet(_ input: DeleteFleetRequest) throws -> DeleteFleetResponse {
        return try client.send(operation: "DeleteFleet", path: "/deleteFleet", httpMethod: "POST", input: input)
    }

    ///  Describes a robot.
    public func describeRobot(_ input: DescribeRobotRequest) throws -> DescribeRobotResponse {
        return try client.send(operation: "DescribeRobot", path: "/describeRobot", httpMethod: "POST", input: input)
    }

    ///  Updates a robot application.
    public func updateRobotApplication(_ input: UpdateRobotApplicationRequest) throws -> UpdateRobotApplicationResponse {
        return try client.send(operation: "UpdateRobotApplication", path: "/updateRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Describes one or more simulation jobs.
    public func batchDescribeSimulationJob(_ input: BatchDescribeSimulationJobRequest) throws -> BatchDescribeSimulationJobResponse {
        return try client.send(operation: "BatchDescribeSimulationJob", path: "/batchDescribeSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Returns a list of robot application. You can optionally provide filters to retrieve specific robot applications.
    public func listRobotApplications(_ input: ListRobotApplicationsRequest) throws -> ListRobotApplicationsResponse {
        return try client.send(operation: "ListRobotApplications", path: "/listRobotApplications", httpMethod: "POST", input: input)
    }

    ///  Deletes a robot application.
    public func deleteRobotApplication(_ input: DeleteRobotApplicationRequest) throws -> DeleteRobotApplicationResponse {
        return try client.send(operation: "DeleteRobotApplication", path: "/deleteRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Cancels the specified simulation job.
    public func cancelSimulationJob(_ input: CancelSimulationJobRequest) throws -> CancelSimulationJobResponse {
        return try client.send(operation: "CancelSimulationJob", path: "/cancelSimulationJob", httpMethod: "POST", input: input)
    }

    ///  Creates a version of a robot application.
    public func createRobotApplicationVersion(_ input: CreateRobotApplicationVersionRequest) throws -> CreateRobotApplicationVersionResponse {
        return try client.send(operation: "CreateRobotApplicationVersion", path: "/createRobotApplicationVersion", httpMethod: "POST", input: input)
    }

    ///  Creates a robot application. 
    public func createRobotApplication(_ input: CreateRobotApplicationRequest) throws -> CreateRobotApplicationResponse {
        return try client.send(operation: "CreateRobotApplication", path: "/createRobotApplication", httpMethod: "POST", input: input)
    }

    ///  Deletes a simulation application.
    public func deleteSimulationApplication(_ input: DeleteSimulationApplicationRequest) throws -> DeleteSimulationApplicationResponse {
        return try client.send(operation: "DeleteSimulationApplication", path: "/deleteSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.
    public func listDeploymentJobs(_ input: ListDeploymentJobsRequest) throws -> ListDeploymentJobsResponse {
        return try client.send(operation: "ListDeploymentJobs", path: "/listDeploymentJobs", httpMethod: "POST", input: input)
    }

    ///  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.
    public func syncDeploymentJob(_ input: SyncDeploymentJobRequest) throws -> SyncDeploymentJobResponse {
        return try client.send(operation: "SyncDeploymentJob", path: "/syncDeploymentJob", httpMethod: "POST", input: input)
    }

    ///  Describes a simulation application.
    public func describeSimulationApplication(_ input: DescribeSimulationApplicationRequest) throws -> DescribeSimulationApplicationResponse {
        return try client.send(operation: "DescribeSimulationApplication", path: "/describeSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Updates a simulation application.
    public func updateSimulationApplication(_ input: UpdateSimulationApplicationRequest) throws -> UpdateSimulationApplicationResponse {
        return try client.send(operation: "UpdateSimulationApplication", path: "/updateSimulationApplication", httpMethod: "POST", input: input)
    }

    ///  Creates a robot.
    public func createRobot(_ input: CreateRobotRequest) throws -> CreateRobotResponse {
        return try client.send(operation: "CreateRobot", path: "/createRobot", httpMethod: "POST", input: input)
    }

    ///  Returns a list of robots. You can optionally provide filters to retrieve specific robots.
    public func listRobots(_ input: ListRobotsRequest) throws -> ListRobotsResponse {
        return try client.send(operation: "ListRobots", path: "/listRobots", httpMethod: "POST", input: input)
    }

    ///  Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.
    public func listFleets(_ input: ListFleetsRequest) throws -> ListFleetsResponse {
        return try client.send(operation: "ListFleets", path: "/listFleets", httpMethod: "POST", input: input)
    }


}