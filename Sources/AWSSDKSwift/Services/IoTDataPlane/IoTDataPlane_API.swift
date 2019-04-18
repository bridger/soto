// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS IoT AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.
*/
public struct IoTDataPlane {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "data.iot",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2015-05-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [IoTDataPlaneErrorType.self]
        )
    }

    ///  Updates the thing shadow for the specified thing. For more information, see UpdateThingShadow in the AWS IoT Developer Guide.
    public func updateThingShadow(_ input: UpdateThingShadowRequest) throws -> UpdateThingShadowResponse {
        return try client.send(operation: "UpdateThingShadow", path: "/things/{thingName}/shadow", httpMethod: "POST", input: input)
    }

    ///  Deletes the thing shadow for the specified thing. For more information, see DeleteThingShadow in the AWS IoT Developer Guide.
    public func deleteThingShadow(_ input: DeleteThingShadowRequest) throws -> DeleteThingShadowResponse {
        return try client.send(operation: "DeleteThingShadow", path: "/things/{thingName}/shadow", httpMethod: "DELETE", input: input)
    }

    ///  Publishes state information. For more information, see HTTP Protocol in the AWS IoT Developer Guide.
    public func publish(_ input: PublishRequest) throws {
        _ = try client.send(operation: "Publish", path: "/topics/{topic}", httpMethod: "POST", input: input)
    }

    ///  Gets the thing shadow for the specified thing. For more information, see GetThingShadow in the AWS IoT Developer Guide.
    public func getThingShadow(_ input: GetThingShadowRequest) throws -> GetThingShadowResponse {
        return try client.send(operation: "GetThingShadow", path: "/things/{thingName}/shadow", httpMethod: "GET", input: input)
    }


}