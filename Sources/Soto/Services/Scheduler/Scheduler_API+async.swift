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
extension Scheduler {
    // MARK: Async API Calls

    /// Creates the specified schedule.
    public func createSchedule(_ input: CreateScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScheduleOutput {
        return try await self.client.execute(operation: "CreateSchedule", path: "/schedules/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified schedule group.
    public func createScheduleGroup(_ input: CreateScheduleGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScheduleGroupOutput {
        return try await self.client.execute(operation: "CreateScheduleGroup", path: "/schedule-groups/{Name}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified schedule.
    public func deleteSchedule(_ input: DeleteScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduleOutput {
        return try await self.client.execute(operation: "DeleteSchedule", path: "/schedules/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified schedule group. Deleting a schedule group results in EventBridge Scheduler deleting all schedules associated with the group. When you delete a group, it remains in a DELETING state until all of its associated schedules are deleted. Schedules associated with the group that are set to run while the schedule group is in the process of being deleted might continue to invoke their targets until the schedule group and its associated schedules are deleted.   This operation is eventually consistent.
    public func deleteScheduleGroup(_ input: DeleteScheduleGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduleGroupOutput {
        return try await self.client.execute(operation: "DeleteScheduleGroup", path: "/schedule-groups/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the specified schedule.
    public func getSchedule(_ input: GetScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetScheduleOutput {
        return try await self.client.execute(operation: "GetSchedule", path: "/schedules/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the specified schedule group.
    public func getScheduleGroup(_ input: GetScheduleGroupInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetScheduleGroupOutput {
        return try await self.client.execute(operation: "GetScheduleGroup", path: "/schedule-groups/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of your schedule groups.
    public func listScheduleGroups(_ input: ListScheduleGroupsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScheduleGroupsOutput {
        return try await self.client.execute(operation: "ListScheduleGroups", path: "/schedule-groups", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a paginated list of your EventBridge Scheduler schedules.
    public func listSchedules(_ input: ListSchedulesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSchedulesOutput {
        return try await self.client.execute(operation: "ListSchedules", path: "/schedules", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags associated with the Scheduler resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified EventBridge Scheduler resource. You can only assign tags to schedule groups.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified EventBridge Scheduler schedule group.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the specified schedule. When you call UpdateSchedule, EventBridge Scheduler uses all values, including empty values, specified in the request and overrides the existing schedule. This is by design. This means that if you do not set an optional field in your request, that field will be set to its system-default value after the update.   Before calling this operation, we recommend that you call the GetSchedule API operation and make a note of all optional parameters for your UpdateSchedule call.
    public func updateSchedule(_ input: UpdateScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScheduleOutput {
        return try await self.client.execute(operation: "UpdateSchedule", path: "/schedules/{Name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
