// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for S3
public enum S3ErrorType: AWSErrorType {
    case noSuchKey(message: String?)
    case bucketAlreadyExists(message: String?)
    case bucketAlreadyOwnedByYou(message: String?)
    case noSuchBucket(message: String?)
    case noSuchUpload(message: String?)
    case objectNotInActiveTierError(message: String?)
    case objectAlreadyInActiveTierError(message: String?)
}

extension S3ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NoSuchKey":
            self = .noSuchKey(message: message)
        case "BucketAlreadyExists":
            self = .bucketAlreadyExists(message: message)
        case "BucketAlreadyOwnedByYou":
            self = .bucketAlreadyOwnedByYou(message: message)
        case "NoSuchBucket":
            self = .noSuchBucket(message: message)
        case "NoSuchUpload":
            self = .noSuchUpload(message: message)
        case "ObjectNotInActiveTierError":
            self = .objectNotInActiveTierError(message: message)
        case "ObjectAlreadyInActiveTierError":
            self = .objectAlreadyInActiveTierError(message: message)
        default:
            return nil
        }
    }
}