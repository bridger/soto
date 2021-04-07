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

import SotoCore

/// Error enum for EFS
public struct EFSErrorType: AWSErrorType {
    enum Code: String {
        case accessPointAlreadyExists = "AccessPointAlreadyExists"
        case accessPointLimitExceeded = "AccessPointLimitExceeded"
        case accessPointNotFound = "AccessPointNotFound"
        case availabilityZonesMismatch = "AvailabilityZonesMismatch"
        case badRequest = "BadRequest"
        case dependencyTimeout = "DependencyTimeout"
        case fileSystemAlreadyExists = "FileSystemAlreadyExists"
        case fileSystemInUse = "FileSystemInUse"
        case fileSystemLimitExceeded = "FileSystemLimitExceeded"
        case fileSystemNotFound = "FileSystemNotFound"
        case incorrectFileSystemLifeCycleState = "IncorrectFileSystemLifeCycleState"
        case incorrectMountTargetState = "IncorrectMountTargetState"
        case insufficientThroughputCapacity = "InsufficientThroughputCapacity"
        case internalServerError = "InternalServerError"
        case invalidPolicyException = "InvalidPolicyException"
        case ipAddressInUse = "IpAddressInUse"
        case mountTargetConflict = "MountTargetConflict"
        case mountTargetNotFound = "MountTargetNotFound"
        case networkInterfaceLimitExceeded = "NetworkInterfaceLimitExceeded"
        case noFreeAddressesInSubnet = "NoFreeAddressesInSubnet"
        case policyNotFound = "PolicyNotFound"
        case securityGroupLimitExceeded = "SecurityGroupLimitExceeded"
        case securityGroupNotFound = "SecurityGroupNotFound"
        case subnetNotFound = "SubnetNotFound"
        case throughputLimitExceeded = "ThroughputLimitExceeded"
        case tooManyRequests = "TooManyRequests"
        case unsupportedAvailabilityZone = "UnsupportedAvailabilityZone"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EFS
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

    /// Returned if the access point you are trying to create already exists, with the creation token you provided in the request.
    public static var accessPointAlreadyExists: Self { .init(.accessPointAlreadyExists) }
    /// Returned if the AWS account has already created the maximum number of access points allowed per file system.
    public static var accessPointLimitExceeded: Self { .init(.accessPointLimitExceeded) }
    /// Returned if the specified AccessPointId value doesn't exist in the requester's AWS account.
    public static var accessPointNotFound: Self { .init(.accessPointNotFound) }
    /// Returned if the Availability Zone that was specified for a mount target is different from the Availability Zone that was specified for One Zone storage classes. For more information, see Regional and One Zone storage redundancy.
    public static var availabilityZonesMismatch: Self { .init(.availabilityZonesMismatch) }
    /// Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.
    public static var badRequest: Self { .init(.badRequest) }
    /// The service timed out trying to fulfill the request, and the client should try the call again.
    public static var dependencyTimeout: Self { .init(.dependencyTimeout) }
    /// Returned if the file system you are trying to create already exists, with the creation token you provided.
    public static var fileSystemAlreadyExists: Self { .init(.fileSystemAlreadyExists) }
    /// Returned if a file system has mount targets.
    public static var fileSystemInUse: Self { .init(.fileSystemInUse) }
    /// Returned if the AWS account has already created the maximum number of file systems allowed per account.
    public static var fileSystemLimitExceeded: Self { .init(.fileSystemLimitExceeded) }
    /// Returned if the specified FileSystemId value doesn't exist in the requester's AWS account.
    public static var fileSystemNotFound: Self { .init(.fileSystemNotFound) }
    /// Returned if the file system's lifecycle state is not "available".
    public static var incorrectFileSystemLifeCycleState: Self { .init(.incorrectFileSystemLifeCycleState) }
    /// Returned if the mount target is not in the correct state for the operation.
    public static var incorrectMountTargetState: Self { .init(.incorrectMountTargetState) }
    /// Returned if there's not enough capacity to provision additional throughput. This value might be returned when you try to create a file system in provisioned throughput mode, when you attempt to increase the provisioned throughput of an existing file system, or when you attempt to change an existing file system from bursting to provisioned throughput mode. Try again later.
    public static var insufficientThroughputCapacity: Self { .init(.insufficientThroughputCapacity) }
    /// Returned if an error occurred on the server side.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// Returned if the FileSystemPolicy is is malformed or contains an error such as an invalid parameter value or a missing required parameter. Returned in the case of a policy lockout safety check error.
    public static var invalidPolicyException: Self { .init(.invalidPolicyException) }
    /// Returned if the request specified an IpAddress that is already in use in the subnet.
    public static var ipAddressInUse: Self { .init(.ipAddressInUse) }
    /// Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.
    public static var mountTargetConflict: Self { .init(.mountTargetConflict) }
    /// Returned if there is no mount target with the specified ID found in the caller's account.
    public static var mountTargetNotFound: Self { .init(.mountTargetNotFound) }
    /// The calling account has reached the limit for elastic network interfaces for the specific AWS Region. The client should try to delete some elastic network interfaces or get the account limit raised. For more information, see Amazon VPC Limits in the Amazon VPC User Guide  (see the Network interfaces per VPC entry in the table).
    public static var networkInterfaceLimitExceeded: Self { .init(.networkInterfaceLimitExceeded) }
    /// Returned if IpAddress was not specified in the request and there are no free IP addresses in the subnet.
    public static var noFreeAddressesInSubnet: Self { .init(.noFreeAddressesInSubnet) }
    /// Returned if the default file system policy is in effect for the EFS file system specified.
    public static var policyNotFound: Self { .init(.policyNotFound) }
    /// Returned if the size of SecurityGroups specified in the request is greater than five.
    public static var securityGroupLimitExceeded: Self { .init(.securityGroupLimitExceeded) }
    /// Returned if one of the specified security groups doesn't exist in the subnet's VPC.
    public static var securityGroupNotFound: Self { .init(.securityGroupNotFound) }
    /// Returned if there is no subnet with ID SubnetId provided in the request.
    public static var subnetNotFound: Self { .init(.subnetNotFound) }
    /// Returned if the throughput mode or amount of provisioned throughput can't be changed because the throughput limit of 1024 MiB/s has been reached.
    public static var throughputLimitExceeded: Self { .init(.throughputLimitExceeded) }
    /// Returned if you don’t wait at least 24 hours before changing the throughput mode, or decreasing the Provisioned Throughput value.
    public static var tooManyRequests: Self { .init(.tooManyRequests) }
    /// Returned if the requested Amazon EFS functionality is not available in the specified Availability Zone.
    public static var unsupportedAvailabilityZone: Self { .init(.unsupportedAvailabilityZone) }
    /// Returned if the AWS Backup service is not available in the Region in which the request was made.
    public static var validationException: Self { .init(.validationException) }
}

extension EFSErrorType: Equatable {
    public static func == (lhs: EFSErrorType, rhs: EFSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EFSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
