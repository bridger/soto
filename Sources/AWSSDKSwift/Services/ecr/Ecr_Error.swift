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

/// Error enum for Ecr
public enum EcrError: AWSErrorType {
    case serverException(message: String?)
    case invalidParameterException(message: String?)
    case layersNotFoundException(message: String?)
    case layerInaccessibleException(message: String?)
    case repositoryNotFoundException(message: String?)
    case repositoryPolicyNotFoundException(message: String?)
    case uploadNotFoundException(message: String?)
    case invalidLayerException(message: String?)
    case layerPartTooSmallException(message: String?)
    case layerAlreadyExistsException(message: String?)
    case emptyUploadException(message: String?)
    case repositoryAlreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case repositoryNotEmptyException(message: String?)
    case imageAlreadyExistsException(message: String?)
    case imageNotFoundException(message: String?)
    case invalidLayerPartException(message: String?)
}

extension EcrError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = errorCode.substring(from: errorCode.index(index, offsetBy: 1))
        }
        switch errorCode {
        case "ServerException":
            self = .serverException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LayersNotFoundException":
            self = .layersNotFoundException(message: message)
        case "LayerInaccessibleException":
            self = .layerInaccessibleException(message: message)
        case "RepositoryNotFoundException":
            self = .repositoryNotFoundException(message: message)
        case "RepositoryPolicyNotFoundException":
            self = .repositoryPolicyNotFoundException(message: message)
        case "UploadNotFoundException":
            self = .uploadNotFoundException(message: message)
        case "InvalidLayerException":
            self = .invalidLayerException(message: message)
        case "LayerPartTooSmallException":
            self = .layerPartTooSmallException(message: message)
        case "LayerAlreadyExistsException":
            self = .layerAlreadyExistsException(message: message)
        case "EmptyUploadException":
            self = .emptyUploadException(message: message)
        case "RepositoryAlreadyExistsException":
            self = .repositoryAlreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "RepositoryNotEmptyException":
            self = .repositoryNotEmptyException(message: message)
        case "ImageAlreadyExistsException":
            self = .imageAlreadyExistsException(message: message)
        case "ImageNotFoundException":
            self = .imageNotFoundException(message: message)
        case "InvalidLayerPartException":
            self = .invalidLayerPartException(message: message)
        default:
            return nil
        }
    }
}