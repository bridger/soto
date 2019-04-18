// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension EFS {

    public struct CreateTagsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FileSystemId", location: .uri(locationName: "FileSystemId"), required: true, type: .string), 
            AWSShapeMember(label: "Tags", required: true, type: .list)
        ]
        /// ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.
        public let fileSystemId: String
        /// Array of Tag objects to add. Each Tag object is a key-value pair. 
        public let tags: [Tag]

        public init(fileSystemId: String, tags: [Tag]) {
            self.fileSystemId = fileSystemId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case tags = "Tags"
        }
    }

    public struct FileSystemSize: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Timestamp", required: false, type: .timestamp), 
            AWSShapeMember(label: "Value", required: true, type: .long)
        ]
        /// Time at which the size of data, returned in the Value field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.
        public let timestamp: TimeStamp?
        /// Latest known metered size (in bytes) of data stored in the file system.
        public let value: Int64

        public init(timestamp: TimeStamp? = nil, value: Int64) {
            self.timestamp = timestamp
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }

    public struct UpdateFileSystemRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FileSystemId", location: .uri(locationName: "FileSystemId"), required: true, type: .string), 
            AWSShapeMember(label: "ThroughputMode", required: false, type: .enum), 
            AWSShapeMember(label: "ProvisionedThroughputInMibps", required: false, type: .double)
        ]
        /// The ID of the file system that you want to update.
        public let fileSystemId: String
        /// (Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request.
        public let throughputMode: ThroughputMode?
        /// (Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request.
        public let provisionedThroughputInMibps: Double?

        public init(fileSystemId: String, provisionedThroughputInMibps: Double? = nil, throughputMode: ThroughputMode? = nil) {
            self.fileSystemId = fileSystemId
            self.throughputMode = throughputMode
            self.provisionedThroughputInMibps = provisionedThroughputInMibps
        }

        private enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case throughputMode = "ThroughputMode"
            case provisionedThroughputInMibps = "ProvisionedThroughputInMibps"
        }
    }

    public struct DescribeFileSystemsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Marker", location: .querystring(locationName: "Marker"), required: false, type: .string), 
            AWSShapeMember(label: "MaxItems", location: .querystring(locationName: "MaxItems"), required: false, type: .integer), 
            AWSShapeMember(label: "FileSystemId", location: .querystring(locationName: "FileSystemId"), required: false, type: .string), 
            AWSShapeMember(label: "CreationToken", location: .querystring(locationName: "CreationToken"), required: false, type: .string)
        ]
        /// (Optional) Opaque pagination token returned from a previous DescribeFileSystems operation (String). If present, specifies to continue the list from where the returning call had left off. 
        public let marker: String?
        /// (Optional) Specifies the maximum number of file systems to return in the response (integer). This parameter value must be greater than 0. The number of items that Amazon EFS returns is the minimum of the MaxItems parameter specified in the request and the service's internal maximum number of items per page. 
        public let maxItems: Int32?
        /// (Optional) ID of the file system whose description you want to retrieve (String).
        public let fileSystemId: String?
        /// (Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.
        public let creationToken: String?

        public init(creationToken: String? = nil, fileSystemId: String? = nil, marker: String? = nil, maxItems: Int32? = nil) {
            self.marker = marker
            self.maxItems = maxItems
            self.fileSystemId = fileSystemId
            self.creationToken = creationToken
        }

        private enum CodingKeys: String, CodingKey {
            case marker = "Marker"
            case maxItems = "MaxItems"
            case fileSystemId = "FileSystemId"
            case creationToken = "CreationToken"
        }
    }

    public struct DescribeMountTargetSecurityGroupsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MountTargetId", location: .uri(locationName: "MountTargetId"), required: true, type: .string)
        ]
        /// ID of the mount target whose security groups you want to retrieve.
        public let mountTargetId: String

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        private enum CodingKeys: String, CodingKey {
            case mountTargetId = "MountTargetId"
        }
    }

    public struct FileSystemDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ThroughputMode", required: false, type: .enum), 
            AWSShapeMember(label: "LifeCycleState", required: true, type: .enum), 
            AWSShapeMember(label: "KmsKeyId", required: false, type: .string), 
            AWSShapeMember(label: "SizeInBytes", required: true, type: .structure), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "CreationTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "Encrypted", required: false, type: .boolean), 
            AWSShapeMember(label: "FileSystemId", required: true, type: .string), 
            AWSShapeMember(label: "OwnerId", required: true, type: .string), 
            AWSShapeMember(label: "PerformanceMode", required: true, type: .enum), 
            AWSShapeMember(label: "NumberOfMountTargets", required: true, type: .integer), 
            AWSShapeMember(label: "ProvisionedThroughputInMibps", required: false, type: .double), 
            AWSShapeMember(label: "CreationToken", required: true, type: .string)
        ]
        /// The throughput mode for a file system. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change.
        public let throughputMode: ThroughputMode?
        /// Lifecycle phase of the file system.
        public let lifeCycleState: LifeCycleState
        /// The ID of an AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system.
        public let kmsKeyId: String?
        /// Latest known metered size (in bytes) of data stored in the file system, in its Value field, and the time at which that size was determined in its Timestamp field. The Timestamp value is the integer number of seconds since 1970-01-01T00:00:00Z. The SizeInBytes value doesn't represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, SizeInBytes represents actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size that the file system was at any point in time. 
        public let sizeInBytes: FileSystemSize
        /// You can add tags to a file system, including a Name tag. For more information, see CreateTags. If the file system has a Name tag, Amazon EFS returns the value in this field. 
        public let name: String?
        /// Time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).
        public let creationTime: TimeStamp
        /// A Boolean value that, if true, indicates that the file system is encrypted.
        public let encrypted: Bool?
        /// ID of the file system, assigned by Amazon EFS.
        public let fileSystemId: String
        /// AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.
        public let ownerId: String
        /// The PerformanceMode of the file system.
        public let performanceMode: PerformanceMode
        /// Current number of mount targets that the file system has. For more information, see CreateMountTarget.
        public let numberOfMountTargets: Int32
        /// The throughput, measured in MiB/s, that you want to provision for a file system. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see Amazon EFS Limits That You Can Increase in the Amazon EFS User Guide. 
        public let provisionedThroughputInMibps: Double?
        /// Opaque string specified in the request.
        public let creationToken: String

        public init(creationTime: TimeStamp, creationToken: String, encrypted: Bool? = nil, fileSystemId: String, kmsKeyId: String? = nil, lifeCycleState: LifeCycleState, name: String? = nil, numberOfMountTargets: Int32, ownerId: String, performanceMode: PerformanceMode, provisionedThroughputInMibps: Double? = nil, sizeInBytes: FileSystemSize, throughputMode: ThroughputMode? = nil) {
            self.throughputMode = throughputMode
            self.lifeCycleState = lifeCycleState
            self.kmsKeyId = kmsKeyId
            self.sizeInBytes = sizeInBytes
            self.name = name
            self.creationTime = creationTime
            self.encrypted = encrypted
            self.fileSystemId = fileSystemId
            self.ownerId = ownerId
            self.performanceMode = performanceMode
            self.numberOfMountTargets = numberOfMountTargets
            self.provisionedThroughputInMibps = provisionedThroughputInMibps
            self.creationToken = creationToken
        }

        private enum CodingKeys: String, CodingKey {
            case throughputMode = "ThroughputMode"
            case lifeCycleState = "LifeCycleState"
            case kmsKeyId = "KmsKeyId"
            case sizeInBytes = "SizeInBytes"
            case name = "Name"
            case creationTime = "CreationTime"
            case encrypted = "Encrypted"
            case fileSystemId = "FileSystemId"
            case ownerId = "OwnerId"
            case performanceMode = "PerformanceMode"
            case numberOfMountTargets = "NumberOfMountTargets"
            case provisionedThroughputInMibps = "ProvisionedThroughputInMibps"
            case creationToken = "CreationToken"
        }
    }

    public struct MountTargetDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NetworkInterfaceId", required: false, type: .string), 
            AWSShapeMember(label: "MountTargetId", required: true, type: .string), 
            AWSShapeMember(label: "LifeCycleState", required: true, type: .enum), 
            AWSShapeMember(label: "FileSystemId", required: true, type: .string), 
            AWSShapeMember(label: "SubnetId", required: true, type: .string), 
            AWSShapeMember(label: "IpAddress", required: false, type: .string), 
            AWSShapeMember(label: "OwnerId", required: false, type: .string)
        ]
        /// ID of the network interface that Amazon EFS created when it created the mount target.
        public let networkInterfaceId: String?
        /// System-assigned mount target ID.
        public let mountTargetId: String
        /// Lifecycle state of the mount target.
        public let lifeCycleState: LifeCycleState
        /// ID of the file system for which the mount target is intended.
        public let fileSystemId: String
        /// ID of the mount target's subnet.
        public let subnetId: String
        /// Address at which the file system may be mounted via the mount target.
        public let ipAddress: String?
        /// AWS account ID that owns the resource.
        public let ownerId: String?

        public init(fileSystemId: String, ipAddress: String? = nil, lifeCycleState: LifeCycleState, mountTargetId: String, networkInterfaceId: String? = nil, ownerId: String? = nil, subnetId: String) {
            self.networkInterfaceId = networkInterfaceId
            self.mountTargetId = mountTargetId
            self.lifeCycleState = lifeCycleState
            self.fileSystemId = fileSystemId
            self.subnetId = subnetId
            self.ipAddress = ipAddress
            self.ownerId = ownerId
        }

        private enum CodingKeys: String, CodingKey {
            case networkInterfaceId = "NetworkInterfaceId"
            case mountTargetId = "MountTargetId"
            case lifeCycleState = "LifeCycleState"
            case fileSystemId = "FileSystemId"
            case subnetId = "SubnetId"
            case ipAddress = "IpAddress"
            case ownerId = "OwnerId"
        }
    }

    public struct DescribeFileSystemsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FileSystems", required: false, type: .list), 
            AWSShapeMember(label: "Marker", required: false, type: .string), 
            AWSShapeMember(label: "NextMarker", required: false, type: .string)
        ]
        /// Array of file system descriptions.
        public let fileSystems: [FileSystemDescription]?
        /// Present if provided by caller in the request (String).
        public let marker: String?
        /// Present if there are more file systems than returned in the response (String). You can use the NextMarker in the subsequent request to fetch the descriptions.
        public let nextMarker: String?

        public init(fileSystems: [FileSystemDescription]? = nil, marker: String? = nil, nextMarker: String? = nil) {
            self.fileSystems = fileSystems
            self.marker = marker
            self.nextMarker = nextMarker
        }

        private enum CodingKeys: String, CodingKey {
            case fileSystems = "FileSystems"
            case marker = "Marker"
            case nextMarker = "NextMarker"
        }
    }

    public struct DeleteTagsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TagKeys", required: true, type: .list), 
            AWSShapeMember(label: "FileSystemId", location: .uri(locationName: "FileSystemId"), required: true, type: .string)
        ]
        /// List of tag keys to delete.
        public let tagKeys: [String]
        /// ID of the file system whose tags you want to delete (String).
        public let fileSystemId: String

        public init(fileSystemId: String, tagKeys: [String]) {
            self.tagKeys = tagKeys
            self.fileSystemId = fileSystemId
        }

        private enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case fileSystemId = "FileSystemId"
        }
    }

    public struct CreateMountTargetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SecurityGroups", required: false, type: .list), 
            AWSShapeMember(label: "FileSystemId", required: true, type: .string), 
            AWSShapeMember(label: "IpAddress", required: false, type: .string), 
            AWSShapeMember(label: "SubnetId", required: true, type: .string)
        ]
        /// Up to five VPC security group IDs, of the form sg-xxxxxxxx. These must be for the same VPC as subnet specified.
        public let securityGroups: [String]?
        /// ID of the file system for which to create the mount target.
        public let fileSystemId: String
        /// Valid IPv4 address within the address range of the specified subnet.
        public let ipAddress: String?
        /// ID of the subnet to add the mount target in.
        public let subnetId: String

        public init(fileSystemId: String, ipAddress: String? = nil, securityGroups: [String]? = nil, subnetId: String) {
            self.securityGroups = securityGroups
            self.fileSystemId = fileSystemId
            self.ipAddress = ipAddress
            self.subnetId = subnetId
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroups = "SecurityGroups"
            case fileSystemId = "FileSystemId"
            case ipAddress = "IpAddress"
            case subnetId = "SubnetId"
        }
    }

    public struct Tag: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Key", required: true, type: .string), 
            AWSShapeMember(label: "Value", required: true, type: .string)
        ]
        /// Tag key (String). The key can't start with aws:.
        public let key: String
        /// Value of the tag key.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public enum LifeCycleState: String, CustomStringConvertible, Codable {
        case creating = "creating"
        case available = "available"
        case updating = "updating"
        case deleting = "deleting"
        case deleted = "deleted"
        public var description: String { return self.rawValue }
    }

    public struct DescribeTagsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextMarker", required: false, type: .string), 
            AWSShapeMember(label: "Marker", required: false, type: .string), 
            AWSShapeMember(label: "Tags", required: true, type: .list)
        ]
        /// If a value is present, there are more tags to return. In a subsequent request, you can provide the value of NextMarker as the value of the Marker parameter in your next request to retrieve the next set of tags.
        public let nextMarker: String?
        /// If the request included a Marker, the response returns that value in this field.
        public let marker: String?
        /// Returns tags associated with the file system as an array of Tag objects. 
        public let tags: [Tag]

        public init(marker: String? = nil, nextMarker: String? = nil, tags: [Tag]) {
            self.nextMarker = nextMarker
            self.marker = marker
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case nextMarker = "NextMarker"
            case marker = "Marker"
            case tags = "Tags"
        }
    }

    public struct DeleteFileSystemRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FileSystemId", location: .uri(locationName: "FileSystemId"), required: true, type: .string)
        ]
        /// ID of the file system you want to delete.
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        private enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    public struct DescribeMountTargetsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextMarker", required: false, type: .string), 
            AWSShapeMember(label: "MountTargets", required: false, type: .list), 
            AWSShapeMember(label: "Marker", required: false, type: .string)
        ]
        /// If a value is present, there are more mount targets to return. In a subsequent request, you can provide Marker in your request with this value to retrieve the next set of mount targets.
        public let nextMarker: String?
        /// Returns the file system's mount targets as an array of MountTargetDescription objects.
        public let mountTargets: [MountTargetDescription]?
        /// If the request included the Marker, the response returns that value in this field.
        public let marker: String?

        public init(marker: String? = nil, mountTargets: [MountTargetDescription]? = nil, nextMarker: String? = nil) {
            self.nextMarker = nextMarker
            self.mountTargets = mountTargets
            self.marker = marker
        }

        private enum CodingKeys: String, CodingKey {
            case nextMarker = "NextMarker"
            case mountTargets = "MountTargets"
            case marker = "Marker"
        }
    }

    public struct ModifyMountTargetSecurityGroupsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SecurityGroups", required: false, type: .list), 
            AWSShapeMember(label: "MountTargetId", location: .uri(locationName: "MountTargetId"), required: true, type: .string)
        ]
        /// Array of up to five VPC security group IDs.
        public let securityGroups: [String]?
        /// ID of the mount target whose security groups you want to modify.
        public let mountTargetId: String

        public init(mountTargetId: String, securityGroups: [String]? = nil) {
            self.securityGroups = securityGroups
            self.mountTargetId = mountTargetId
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroups = "SecurityGroups"
            case mountTargetId = "MountTargetId"
        }
    }

    public struct DescribeMountTargetSecurityGroupsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SecurityGroups", required: true, type: .list)
        ]
        /// Array of security groups.
        public let securityGroups: [String]

        public init(securityGroups: [String]) {
            self.securityGroups = securityGroups
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroups = "SecurityGroups"
        }
    }

    public enum ThroughputMode: String, CustomStringConvertible, Codable {
        case bursting = "bursting"
        case provisioned = "provisioned"
        public var description: String { return self.rawValue }
    }

    public struct DescribeMountTargetsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxItems", location: .querystring(locationName: "MaxItems"), required: false, type: .integer), 
            AWSShapeMember(label: "MountTargetId", location: .querystring(locationName: "MountTargetId"), required: false, type: .string), 
            AWSShapeMember(label: "FileSystemId", location: .querystring(locationName: "FileSystemId"), required: false, type: .string), 
            AWSShapeMember(label: "Marker", location: .querystring(locationName: "Marker"), required: false, type: .string)
        ]
        /// (Optional) Maximum number of mount targets to return in the response. It must be an integer with a value greater than zero.
        public let maxItems: Int32?
        /// (Optional) ID of the mount target that you want to have described (String). It must be included in your request if FileSystemId is not included.
        public let mountTargetId: String?
        /// (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if MountTargetId is not included.
        public let fileSystemId: String?
        /// (Optional) Opaque pagination token returned from a previous DescribeMountTargets operation (String). If present, it specifies to continue the list from where the previous returning call left off.
        public let marker: String?

        public init(fileSystemId: String? = nil, marker: String? = nil, maxItems: Int32? = nil, mountTargetId: String? = nil) {
            self.maxItems = maxItems
            self.mountTargetId = mountTargetId
            self.fileSystemId = fileSystemId
            self.marker = marker
        }

        private enum CodingKeys: String, CodingKey {
            case maxItems = "MaxItems"
            case mountTargetId = "MountTargetId"
            case fileSystemId = "FileSystemId"
            case marker = "Marker"
        }
    }

    public struct CreateFileSystemRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "PerformanceMode", required: false, type: .enum), 
            AWSShapeMember(label: "CreationToken", required: true, type: .string), 
            AWSShapeMember(label: "ThroughputMode", required: false, type: .enum), 
            AWSShapeMember(label: "ProvisionedThroughputInMibps", required: false, type: .double), 
            AWSShapeMember(label: "Encrypted", required: false, type: .boolean), 
            AWSShapeMember(label: "KmsKeyId", required: false, type: .string)
        ]
        /// The PerformanceMode of the file system. We recommend generalPurpose performance mode for most file systems. File systems using the maxIO performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. This can't be changed after the file system has been created.
        public let performanceMode: PerformanceMode?
        /// String of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.
        public let creationToken: String
        /// The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: bursting and provisioned. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change.
        public let throughputMode: ThroughputMode?
        /// The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see Amazon EFS Limits That You Can Increase in the Amazon EFS User Guide. 
        public let provisionedThroughputInMibps: Double?
        /// A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying a CreateFileSystemRequest$KmsKeyId for an existing AWS Key Management Service (AWS KMS) customer master key (CMK). If you don't specify a CMK, then the default CMK for Amazon EFS, /aws/elasticfilesystem, is used to protect the encrypted file system. 
        public let encrypted: Bool?
        /// The ID of the AWS KMS CMK to be used to protect the encrypted file system. This parameter is only required if you want to use a non-default CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. This ID can be in one of the following formats:   Key ID - A unique identifier of the key, for example, 1234abcd-12ab-34cd-56ef-1234567890ab.   ARN - An Amazon Resource Name (ARN) for the key, for example, arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab.   Key alias - A previously created display name for a key. For example, alias/projectKey1.   Key alias ARN - An ARN for a key alias, for example, arn:aws:kms:us-west-2:444455556666:alias/projectKey1.   If KmsKeyId is specified, the CreateFileSystemRequest$Encrypted parameter must be set to true.
        public let kmsKeyId: String?

        public init(creationToken: String, encrypted: Bool? = nil, kmsKeyId: String? = nil, performanceMode: PerformanceMode? = nil, provisionedThroughputInMibps: Double? = nil, throughputMode: ThroughputMode? = nil) {
            self.performanceMode = performanceMode
            self.creationToken = creationToken
            self.throughputMode = throughputMode
            self.provisionedThroughputInMibps = provisionedThroughputInMibps
            self.encrypted = encrypted
            self.kmsKeyId = kmsKeyId
        }

        private enum CodingKeys: String, CodingKey {
            case performanceMode = "PerformanceMode"
            case creationToken = "CreationToken"
            case throughputMode = "ThroughputMode"
            case provisionedThroughputInMibps = "ProvisionedThroughputInMibps"
            case encrypted = "Encrypted"
            case kmsKeyId = "KmsKeyId"
        }
    }

    public struct DeleteMountTargetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MountTargetId", location: .uri(locationName: "MountTargetId"), required: true, type: .string)
        ]
        /// ID of the mount target to delete (String).
        public let mountTargetId: String

        public init(mountTargetId: String) {
            self.mountTargetId = mountTargetId
        }

        private enum CodingKeys: String, CodingKey {
            case mountTargetId = "MountTargetId"
        }
    }

    public struct DescribeTagsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "FileSystemId", location: .uri(locationName: "FileSystemId"), required: true, type: .string), 
            AWSShapeMember(label: "Marker", location: .querystring(locationName: "Marker"), required: false, type: .string), 
            AWSShapeMember(label: "MaxItems", location: .querystring(locationName: "MaxItems"), required: false, type: .integer)
        ]
        /// ID of the file system whose tag set you want to retrieve.
        public let fileSystemId: String
        /// (Optional) Opaque pagination token returned from a previous DescribeTags operation (String). If present, it specifies to continue the list from where the previous call left off.
        public let marker: String?
        /// (Optional) Maximum number of file system tags to return in the response. It must be an integer with a value greater than zero.
        public let maxItems: Int32?

        public init(fileSystemId: String, marker: String? = nil, maxItems: Int32? = nil) {
            self.fileSystemId = fileSystemId
            self.marker = marker
            self.maxItems = maxItems
        }

        private enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case marker = "Marker"
            case maxItems = "MaxItems"
        }
    }

    public enum PerformanceMode: String, CustomStringConvertible, Codable {
        case generalpurpose = "generalPurpose"
        case maxio = "maxIO"
        public var description: String { return self.rawValue }
    }

}