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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension WellArchitected {
    ///  List of answers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAnswersPaginator(
        _ input: ListAnswersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAnswersInput, ListAnswersOutput> {
        return .init(
            input: input,
            command: listAnswers,
            inputKey: \ListAnswersInput.nextToken,
            outputKey: \ListAnswersOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List of Trusted Advisor check details by account related to the workload.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCheckDetailsPaginator(
        _ input: ListCheckDetailsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCheckDetailsInput, ListCheckDetailsOutput> {
        return .init(
            input: input,
            command: listCheckDetails,
            inputKey: \ListCheckDetailsInput.nextToken,
            outputKey: \ListCheckDetailsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List of Trusted Advisor checks summarized for all accounts related to the workload.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCheckSummariesPaginator(
        _ input: ListCheckSummariesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCheckSummariesInput, ListCheckSummariesOutput> {
        return .init(
            input: input,
            command: listCheckSummaries,
            inputKey: \ListCheckSummariesInput.nextToken,
            outputKey: \ListCheckSummariesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List lens review improvements.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLensReviewImprovementsPaginator(
        _ input: ListLensReviewImprovementsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLensReviewImprovementsInput, ListLensReviewImprovementsOutput> {
        return .init(
            input: input,
            command: listLensReviewImprovements,
            inputKey: \ListLensReviewImprovementsInput.nextToken,
            outputKey: \ListLensReviewImprovementsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List lens reviews.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLensReviewsPaginator(
        _ input: ListLensReviewsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLensReviewsInput, ListLensReviewsOutput> {
        return .init(
            input: input,
            command: listLensReviews,
            inputKey: \ListLensReviewsInput.nextToken,
            outputKey: \ListLensReviewsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the lens shares associated with the lens.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLensSharesPaginator(
        _ input: ListLensSharesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLensSharesInput, ListLensSharesOutput> {
        return .init(
            input: input,
            command: listLensShares,
            inputKey: \ListLensSharesInput.nextToken,
            outputKey: \ListLensSharesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the available lenses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLensesPaginator(
        _ input: ListLensesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLensesInput, ListLensesOutput> {
        return .init(
            input: input,
            command: listLenses,
            inputKey: \ListLensesInput.nextToken,
            outputKey: \ListLensesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all milestones for an existing workload.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMilestonesPaginator(
        _ input: ListMilestonesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMilestonesInput, ListMilestonesOutput> {
        return .init(
            input: input,
            command: listMilestones,
            inputKey: \ListMilestonesInput.nextToken,
            outputKey: \ListMilestonesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List lens notifications.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listNotificationsPaginator(
        _ input: ListNotificationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListNotificationsInput, ListNotificationsOutput> {
        return .init(
            input: input,
            command: listNotifications,
            inputKey: \ListNotificationsInput.nextToken,
            outputKey: \ListNotificationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List  the workload invitations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listShareInvitationsPaginator(
        _ input: ListShareInvitationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListShareInvitationsInput, ListShareInvitationsOutput> {
        return .init(
            input: input,
            command: listShareInvitations,
            inputKey: \ListShareInvitationsInput.nextToken,
            outputKey: \ListShareInvitationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the workload shares associated with the workload.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkloadSharesPaginator(
        _ input: ListWorkloadSharesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkloadSharesInput, ListWorkloadSharesOutput> {
        return .init(
            input: input,
            command: listWorkloadShares,
            inputKey: \ListWorkloadSharesInput.nextToken,
            outputKey: \ListWorkloadSharesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List workloads. Paginated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkloadsPaginator(
        _ input: ListWorkloadsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkloadsInput, ListWorkloadsOutput> {
        return .init(
            input: input,
            command: listWorkloads,
            inputKey: \ListWorkloadsInput.nextToken,
            outputKey: \ListWorkloadsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
