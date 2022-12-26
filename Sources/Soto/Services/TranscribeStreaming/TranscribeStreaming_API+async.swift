//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension TranscribeStreaming {
    // MARK: Async API Calls

    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to  Amazon Transcribe and the transcription results are streamed to your application. Use this operation for Call Analytics transcriptions. The following parameters are required:    language-code     media-encoding     sample-rate    For more information on streaming with Amazon Transcribe, see Transcribing streaming audio.
    public func startCallAnalyticsStreamTranscription(_ input: StartCallAnalyticsStreamTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCallAnalyticsStreamTranscriptionResponse {
        return try await self.client.execute(operation: "StartCallAnalyticsStreamTranscription", path: "/call-analytics-stream-transcription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to  Amazon Transcribe Medical and the transcription results are streamed to your application.   The following parameters are required:    language-code     media-encoding     sample-rate    For more information on streaming with Amazon Transcribe Medical, see  Transcribing streaming audio.
    public func startMedicalStreamTranscription(_ input: StartMedicalStreamTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMedicalStreamTranscriptionResponse {
        return try await self.client.execute(operation: "StartMedicalStreamTranscription", path: "/medical-stream-transcription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to  Amazon Transcribe and the transcription results are streamed to your application. The following parameters are required:    language-code or identify-language     media-encoding     sample-rate    For more information on streaming with Amazon Transcribe, see Transcribing streaming audio.
    public func startStreamTranscription(_ input: StartStreamTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStreamTranscriptionResponse {
        return try await self.client.execute(operation: "StartStreamTranscription", path: "/stream-transcription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
