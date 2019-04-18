// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SNS
public enum SNSErrorType: AWSErrorType {
    case invalidParameterException(message: String?)
    case internalErrorException(message: String?)
    case authorizationErrorException(message: String?)
    case notFoundException(message: String?)
    case throttledException(message: String?)
    case filterPolicyLimitExceededException(message: String?)
    case subscriptionLimitExceededException(message: String?)
    case invalidSecurityException(message: String?)
    case topicLimitExceededException(message: String?)
    case invalidParameterValueException(message: String?)
    case endpointDisabledException(message: String?)
    case platformApplicationDisabledException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case kMSOptInRequired(message: String?)
    case kMSThrottlingException(message: String?)
    case kMSAccessDeniedException(message: String?)
}

extension SNSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "AuthorizationErrorException":
            self = .authorizationErrorException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ThrottledException":
            self = .throttledException(message: message)
        case "FilterPolicyLimitExceededException":
            self = .filterPolicyLimitExceededException(message: message)
        case "SubscriptionLimitExceededException":
            self = .subscriptionLimitExceededException(message: message)
        case "InvalidSecurityException":
            self = .invalidSecurityException(message: message)
        case "TopicLimitExceededException":
            self = .topicLimitExceededException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "EndpointDisabledException":
            self = .endpointDisabledException(message: message)
        case "PlatformApplicationDisabledException":
            self = .platformApplicationDisabledException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "KMSOptInRequired":
            self = .kMSOptInRequired(message: message)
        case "KMSThrottlingException":
            self = .kMSThrottlingException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        default:
            return nil
        }
    }
}