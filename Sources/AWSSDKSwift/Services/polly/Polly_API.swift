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

import Foundation
import AWSSDKSwiftCore

/**
Amazon Polly is a web service that makes it easy to synthesize speech from text. The Amazon Polly service provides API operations for synthesizing high-quality speech from plain text and Speech Synthesis Markup Language (SSML), along with managing pronunciations lexicons that enable you to get the best results for your application domain.
*/
public struct Polly {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "polly",
            serviceProtocol: .restjson,
            apiVersion: "2016-06-10",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [PollyError.self]
        )
    }

    ///  Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see Managing Lexicons.
    public func getLexicon(_ input: GetLexiconInput) throws -> GetLexiconOutput {
        return try client.send(operation: "GetLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: "GET", input: input)
    }

    ///  Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name.  When synthesizing speech ( SynthesizeSpeech ), you provide the voice ID for the voice you want from the list of voices returned by DescribeVoices. For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the DescribeVoices operation you can provide the user with a list of available voices to select from.  You can optionally specify a language code to filter the available voices. For example, if you specify en-US, the operation returns a list of all available US English voices.  This operation requires permissions to perform the polly:DescribeVoices action.
    public func describeVoices(_ input: DescribeVoicesInput) throws -> DescribeVoicesOutput {
        return try client.send(operation: "DescribeVoices", path: "/v1/voices", httpMethod: "GET", input: input)
    }

    ///  Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see Managing Lexicons.
    public func listLexicons(_ input: ListLexiconsInput) throws -> ListLexiconsOutput {
        return try client.send(operation: "ListLexicons", path: "/v1/lexicons", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the GetLexicon or ListLexicon APIs. For more information, see Managing Lexicons.
    public func deleteLexicon(_ input: DeleteLexiconInput) throws -> DeleteLexiconOutput {
        return try client.send(operation: "DeleteLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: "DELETE", input: input)
    }

    ///  Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see How it Works.
    public func synthesizeSpeech(_ input: SynthesizeSpeechInput) throws -> SynthesizeSpeechOutput {
        return try client.send(operation: "SynthesizeSpeech", path: "/v1/speech", httpMethod: "POST", input: input)
    }

    ///  Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation. For more information, see Managing Lexicons.
    public func putLexicon(_ input: PutLexiconInput) throws -> PutLexiconOutput {
        return try client.send(operation: "PutLexicon", path: "/v1/lexicons/{LexiconName}", httpMethod: "PUT", input: input)
    }


}