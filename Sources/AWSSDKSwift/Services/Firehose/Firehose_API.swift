// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Kinesis Data Firehose API Reference Amazon Kinesis Data Firehose is a fully managed service that delivers real-time streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), Amazon Redshift, and Splunk.
*/
public struct Firehose {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Firehose_20150804",
            service: "firehose",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-08-04",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [FirehoseErrorType.self]
        )
    }

    ///  Updates the specified destination of the specified delivery stream. Use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes. Switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination. If the destination type is the same, Kinesis Data Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if EncryptionConfiguration is not specified, then the existing EncryptionConfiguration is maintained on the destination. If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Kinesis Data Firehose does not merge any parameters. In this case, all parameters must be specified. Kinesis Data Firehose uses CurrentDeliveryStreamVersionId to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using DescribeDeliveryStream. Use the new version ID to set CurrentDeliveryStreamVersionId in the next call.
    public func updateDestination(_ input: UpdateDestinationInput) throws -> UpdateDestinationOutput {
        return try client.send(operation: "UpdateDestination", path: "/", httpMethod: "POST", input: input)
    }

    ///  Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a delivery stream, use PutRecord. Applications using these operations are referred to as producers. By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use PutRecord and PutRecordBatch, the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see Amazon Kinesis Data Firehose Limits. Each PutRecordBatch request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed. You must specify the name of the delivery stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it could be a segment from a log file, geographic location data, website clickstream data, and so on. Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (\n) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination. The PutRecordBatch response includes a count of failed records, FailedPutCount, and an array of responses, RequestResponses. Even if the PutRecordBatch call succeeds, the value of FailedPutCount may be greater than 0, indicating that there are records for which the operation didn't succeed. Each entry in the RequestResponses array provides additional information about the processed record. It directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. RequestResponses includes both successfully and unsuccessfully processed records. Kinesis Data Firehose tries to process all records in each PutRecordBatch request. A single record failure does not stop the processing of subsequent records.  A successfully processed record includes a RecordId value, which is unique for the record. An unsuccessfully processed record includes ErrorCode and ErrorMessage values. ErrorCode reflects the type of error, and is one of the following values: ServiceUnavailableException or InternalFailure. ErrorMessage provides more detailed information about the error. If there is an internal server error or a timeout, the write might have completed or it might have failed. If FailedPutCount is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination. If PutRecordBatch throws ServiceUnavailableException, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream. Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.  Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding. 
    public func putRecordBatch(_ input: PutRecordBatchInput) throws -> PutRecordBatchOutput {
        return try client.send(operation: "PutRecordBatch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from the specified delivery stream. Removed tags are deleted, and you can't recover them after this operation successfully completes. If you specify a tag that doesn't exist, the operation ignores it. This operation has a limit of five transactions per second per account. 
    public func untagDeliveryStream(_ input: UntagDeliveryStreamInput) throws -> UntagDeliveryStreamOutput {
        return try client.send(operation: "UntagDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates tags for the specified delivery stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Tags are metadata. For example, you can add friendly names and descriptions or other types of information that can help you distinguish the delivery stream. For more information about tags, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.   Each delivery stream can have up to 50 tags.   This operation has a limit of five transactions per second per account. 
    public func tagDeliveryStream(_ input: TagDeliveryStreamInput) throws -> TagDeliveryStreamOutput {
        return try client.send(operation: "TagDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists your delivery streams in alphabetical order of their names. The number of delivery streams might be too large to return using a single call to ListDeliveryStreams. You can limit the number of delivery streams returned, using the Limit parameter. To determine whether there are more delivery streams to list, check the value of HasMoreDeliveryStreams in the output. If there are more delivery streams to list, you can request them by calling this operation again and setting the ExclusiveStartDeliveryStreamName parameter to the name of the last delivery stream returned in the last call.
    public func listDeliveryStreams(_ input: ListDeliveryStreamsInput) throws -> ListDeliveryStreamsOutput {
        return try client.send(operation: "ListDeliveryStreams", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Kinesis Data Firehose delivery stream. By default, you can create up to 50 delivery streams per AWS Region. This is an asynchronous operation that immediately returns. The initial status of the delivery stream is CREATING. After the delivery stream is created, its status is ACTIVE and it now accepts data. Attempts to send data to a delivery stream that is not in the ACTIVE state cause an exception. To check the state of a delivery stream, use DescribeDeliveryStream. A Kinesis Data Firehose delivery stream can be configured to receive records directly from providers using PutRecord or PutRecordBatch, or it can be configured to use an existing Kinesis stream as its source. To specify a Kinesis data stream as input, set the DeliveryStreamType parameter to KinesisStreamAsSource, and provide the Kinesis stream Amazon Resource Name (ARN) and role ARN in the KinesisStreamSourceConfiguration parameter. A delivery stream is configured with a single destination: Amazon S3, Amazon ES, Amazon Redshift, or Splunk. You must specify only one of the following destination configuration parameters: ExtendedS3DestinationConfiguration, S3DestinationConfiguration, ElasticsearchDestinationConfiguration, RedshiftDestinationConfiguration, or SplunkDestinationConfiguration. When you specify S3DestinationConfiguration, you can also provide the following optional values: BufferingHints, EncryptionConfiguration, and CompressionFormat. By default, if no BufferingHints value is provided, Kinesis Data Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. BufferingHints is a hint, so there are some cases where the service cannot adhere to these conditions strictly. For example, record boundaries might be such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3. A few notes about Amazon Redshift as a destination:   An Amazon Redshift destination requires an S3 bucket as intermediate location. Kinesis Data Firehose first delivers data to Amazon S3 and then uses COPY syntax to load data into an Amazon Redshift table. This is specified in the RedshiftDestinationConfiguration.S3Configuration parameter.   The compression formats SNAPPY or ZIP cannot be specified in RedshiftDestinationConfiguration.S3Configuration because the Amazon Redshift COPY operation that reads from the S3 bucket doesn't support these compression formats.   We strongly recommend that you use the user name and password you provide exclusively with Kinesis Data Firehose, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions.   Kinesis Data Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Kinesis Data Firehose principal to assume the role, and the role should have permissions that allow the service to deliver the data. For more information, see Grant Kinesis Data Firehose Access to an Amazon S3 Destination in the Amazon Kinesis Data Firehose Developer Guide.
    public func createDeliveryStream(_ input: CreateDeliveryStreamInput) throws -> CreateDeliveryStreamOutput {
        return try client.send(operation: "CreateDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Writes a single data record into an Amazon Kinesis Data Firehose delivery stream. To write multiple data records into a delivery stream, use PutRecordBatch. Applications using these operations are referred to as producers. By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. If you use PutRecord and PutRecordBatch, the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see Amazon Kinesis Data Firehose Limits.  You must specify the name of the delivery stream and the data record when using PutRecord. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data. For example, it can be a segment from a log file, geographic location data, website clickstream data, and so on. Kinesis Data Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (\n) or some other character unique within the data. This allows the consumer application to parse individual data items when reading the data from the destination. The PutRecord operation returns a RecordId, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation. If the PutRecord operation throws a ServiceUnavailableException, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.  Data records sent to Kinesis Data Firehose are stored for 24 hours from the time they are added to a delivery stream as it tries to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.  Don't concatenate two or more base64 strings to form the data fields of your records. Instead, concatenate the raw data, then perform base64 encoding. 
    public func putRecord(_ input: PutRecordInput) throws -> PutRecordOutput {
        return try client.send(operation: "PutRecord", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables server-side encryption (SSE) for the delivery stream. This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Firehose first sets the status of the stream to ENABLING then to ENABLED. You can continue to read and write data to your stream while its status is ENABLING but they won't get encrypted. It can take up to 5 seconds after the encryption status changes to ENABLED before all records written to the delivery stream are encrypted. To check the encryption state of a delivery stream, use DescribeDeliveryStream.  You can only enable SSE for a delivery stream that uses DirectPut as its source.  The StartDeliveryStreamEncryption and StopDeliveryStreamEncryption operations have a combined limit of 25 calls per delivery stream per 24 hours. For example, you reach the limit if you call StartDeliveryStreamEncryption thirteen times and StopDeliveryStreamEncryption twelve times for the same stream in a 24-hour period.
    public func startDeliveryStreamEncryption(_ input: StartDeliveryStreamEncryptionInput) throws -> StartDeliveryStreamEncryptionOutput {
        return try client.send(operation: "StartDeliveryStreamEncryption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags for the specified delivery stream. This operation has a limit of five transactions per second per account. 
    public func listTagsForDeliveryStream(_ input: ListTagsForDeliveryStreamInput) throws -> ListTagsForDeliveryStreamOutput {
        return try client.send(operation: "ListTagsForDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables server-side encryption (SSE) for the delivery stream. This operation is asynchronous. It returns immediately. When you invoke it, Kinesis Firehose first sets the status of the stream to DISABLING then to DISABLED. You can continue to read and write data to your stream while its status is DISABLING. It can take up to 5 seconds after the encryption status changes to DISABLED before all records written to the delivery stream are no longer subject to encryption. To check the encryption state of a delivery stream, use DescribeDeliveryStream.  The StartDeliveryStreamEncryption and StopDeliveryStreamEncryption operations have a combined limit of 25 calls per delivery stream per 24 hours. For example, you reach the limit if you call StartDeliveryStreamEncryption thirteen times and StopDeliveryStreamEncryption twelve times for the same stream in a 24-hour period.
    public func stopDeliveryStreamEncryption(_ input: StopDeliveryStreamEncryptionInput) throws -> StopDeliveryStreamEncryptionOutput {
        return try client.send(operation: "StopDeliveryStreamEncryption", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a delivery stream and its data. You can delete a delivery stream only if it is in ACTIVE or DELETING state, and not in the CREATING state. While the deletion request is in process, the delivery stream is in the DELETING state. To check the state of a delivery stream, use DescribeDeliveryStream. While the delivery stream is DELETING state, the service might continue to accept the records, but it doesn't make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.
    public func deleteDeliveryStream(_ input: DeleteDeliveryStreamInput) throws -> DeleteDeliveryStreamOutput {
        return try client.send(operation: "DeleteDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call DescribeDeliveryStream to see whether the delivery stream is ACTIVE and therefore ready for data to be sent to it.
    public func describeDeliveryStream(_ input: DescribeDeliveryStreamInput) throws -> DescribeDeliveryStreamOutput {
        return try client.send(operation: "DescribeDeliveryStream", path: "/", httpMethod: "POST", input: input)
    }


}