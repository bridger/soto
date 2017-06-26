// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for Config
public enum ConfigError: AWSErrorType {
    case noSuchDeliveryChannelException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidNextTokenException(message: String?)
    case maxNumberOfDeliveryChannelsExceededException(message: String?)
    case noAvailableConfigurationRecorderException(message: String?)
    case invalidDeliveryChannelNameException(message: String?)
    case noSuchBucketException(message: String?)
    case invalidS3KeyPrefixException(message: String?)
    case invalidSNSTopicARNException(message: String?)
    case insufficientDeliveryPolicyException(message: String?)
    case noSuchConfigRuleException(message: String?)
    case lastDeliveryChannelDeleteFailedException(message: String?)
    case noRunningConfigurationRecorderException(message: String?)
    case validationException(message: String?)
    case invalidTimeRangeException(message: String?)
    case invalidLimitException(message: String?)
    case resourceNotDiscoveredException(message: String?)
    case maxNumberOfConfigurationRecordersExceededException(message: String?)
    case invalidConfigurationRecorderNameException(message: String?)
    case invalidRoleException(message: String?)
    case invalidRecordingGroupException(message: String?)
    case noSuchConfigurationRecorderException(message: String?)
    case maxNumberOfConfigRulesExceededException(message: String?)
    case resourceInUseException(message: String?)
    case insufficientPermissionsException(message: String?)
    case noAvailableDeliveryChannelException(message: String?)
    case invalidResultTokenException(message: String?)
    case limitExceededException(message: String?)
}

extension ConfigError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "NoSuchDeliveryChannelException":
            self = .noSuchDeliveryChannelException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "MaxNumberOfDeliveryChannelsExceededException":
            self = .maxNumberOfDeliveryChannelsExceededException(message: message)
        case "NoAvailableConfigurationRecorderException":
            self = .noAvailableConfigurationRecorderException(message: message)
        case "InvalidDeliveryChannelNameException":
            self = .invalidDeliveryChannelNameException(message: message)
        case "NoSuchBucketException":
            self = .noSuchBucketException(message: message)
        case "InvalidS3KeyPrefixException":
            self = .invalidS3KeyPrefixException(message: message)
        case "InvalidSNSTopicARNException":
            self = .invalidSNSTopicARNException(message: message)
        case "InsufficientDeliveryPolicyException":
            self = .insufficientDeliveryPolicyException(message: message)
        case "NoSuchConfigRuleException":
            self = .noSuchConfigRuleException(message: message)
        case "LastDeliveryChannelDeleteFailedException":
            self = .lastDeliveryChannelDeleteFailedException(message: message)
        case "NoRunningConfigurationRecorderException":
            self = .noRunningConfigurationRecorderException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "InvalidLimitException":
            self = .invalidLimitException(message: message)
        case "ResourceNotDiscoveredException":
            self = .resourceNotDiscoveredException(message: message)
        case "MaxNumberOfConfigurationRecordersExceededException":
            self = .maxNumberOfConfigurationRecordersExceededException(message: message)
        case "InvalidConfigurationRecorderNameException":
            self = .invalidConfigurationRecorderNameException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "InvalidRecordingGroupException":
            self = .invalidRecordingGroupException(message: message)
        case "NoSuchConfigurationRecorderException":
            self = .noSuchConfigurationRecorderException(message: message)
        case "MaxNumberOfConfigRulesExceededException":
            self = .maxNumberOfConfigRulesExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "InsufficientPermissionsException":
            self = .insufficientPermissionsException(message: message)
        case "NoAvailableDeliveryChannelException":
            self = .noAvailableDeliveryChannelException(message: message)
        case "InvalidResultTokenException":
            self = .invalidResultTokenException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        default:
            return nil
        }
    }
}