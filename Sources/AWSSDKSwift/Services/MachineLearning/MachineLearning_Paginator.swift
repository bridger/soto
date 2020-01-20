// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension MachineLearning {

    ///  Returns a list of BatchPrediction operations that match the search criteria in the request.
    public func describeBatchPredictionsPaginator(_ input: DescribeBatchPredictionsInput) -> EventLoopFuture<[BatchPrediction]> {
        return client.paginate(input: input, command: describeBatchPredictions, resultKey: "results", tokenKey: "nextToken")
    }
    
    ///  Returns a list of DataSource that match the search criteria in the request.
    public func describeDataSourcesPaginator(_ input: DescribeDataSourcesInput) -> EventLoopFuture<[DataSource]> {
        return client.paginate(input: input, command: describeDataSources, resultKey: "results", tokenKey: "nextToken")
    }
    
    ///  Returns a list of DescribeEvaluations that match the search criteria in the request.
    public func describeEvaluationsPaginator(_ input: DescribeEvaluationsInput) -> EventLoopFuture<[Evaluation]> {
        return client.paginate(input: input, command: describeEvaluations, resultKey: "results", tokenKey: "nextToken")
    }
    
    ///  Returns a list of MLModel that match the search criteria in the request.
    public func describeMLModelsPaginator(_ input: DescribeMLModelsInput) -> EventLoopFuture<[MLModel]> {
        return client.paginate(input: input, command: describeMLModels, resultKey: "results", tokenKey: "nextToken")
    }
    
}

extension MachineLearning.DescribeBatchPredictionsInput: AWSPaginateable {
    public init(_ original: MachineLearning.DescribeBatchPredictionsInput, token: String) {
        self.init(
            eq: original.eq, 
            filterVariable: original.filterVariable, 
            ge: original.ge, 
            gt: original.gt, 
            le: original.le, 
            limit: original.limit, 
            lt: original.lt, 
            ne: original.ne, 
            nextToken: token, 
            prefix: original.prefix, 
            sortOrder: original.sortOrder
        )
    }
}

extension MachineLearning.DescribeDataSourcesInput: AWSPaginateable {
    public init(_ original: MachineLearning.DescribeDataSourcesInput, token: String) {
        self.init(
            eq: original.eq, 
            filterVariable: original.filterVariable, 
            ge: original.ge, 
            gt: original.gt, 
            le: original.le, 
            limit: original.limit, 
            lt: original.lt, 
            ne: original.ne, 
            nextToken: token, 
            prefix: original.prefix, 
            sortOrder: original.sortOrder
        )
    }
}

extension MachineLearning.DescribeEvaluationsInput: AWSPaginateable {
    public init(_ original: MachineLearning.DescribeEvaluationsInput, token: String) {
        self.init(
            eq: original.eq, 
            filterVariable: original.filterVariable, 
            ge: original.ge, 
            gt: original.gt, 
            le: original.le, 
            limit: original.limit, 
            lt: original.lt, 
            ne: original.ne, 
            nextToken: token, 
            prefix: original.prefix, 
            sortOrder: original.sortOrder
        )
    }
}

extension MachineLearning.DescribeMLModelsInput: AWSPaginateable {
    public init(_ original: MachineLearning.DescribeMLModelsInput, token: String) {
        self.init(
            eq: original.eq, 
            filterVariable: original.filterVariable, 
            ge: original.ge, 
            gt: original.gt, 
            le: original.le, 
            limit: original.limit, 
            lt: original.lt, 
            ne: original.ne, 
            nextToken: token, 
            prefix: original.prefix, 
            sortOrder: original.sortOrder
        )
    }
}


