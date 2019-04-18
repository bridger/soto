// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension CloudSearchDomain {

    public struct SuggestStatus: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "rid", required: false, type: .string), 
            AWSShapeMember(label: "timems", required: false, type: .long)
        ]
        /// The encrypted resource ID for the request.
        public let rid: String?
        /// How long it took to process the request, in milliseconds.
        public let timems: Int64?

        public init(rid: String? = nil, timems: Int64? = nil) {
            self.rid = rid
            self.timems = timems
        }

        private enum CodingKeys: String, CodingKey {
            case rid = "rid"
            case timems = "timems"
        }
    }

    public struct Hits: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "start", required: false, type: .long), 
            AWSShapeMember(label: "hit", required: false, type: .list), 
            AWSShapeMember(label: "cursor", required: false, type: .string), 
            AWSShapeMember(label: "found", required: false, type: .long)
        ]
        /// The index of the first matching document.
        public let start: Int64?
        /// A document that matches the search request.
        public let hit: [Hit]?
        /// A cursor that can be used to retrieve the next set of matching documents when you want to page through a large result set.
        public let cursor: String?
        /// The total number of documents that match the search request.
        public let found: Int64?

        public init(cursor: String? = nil, found: Int64? = nil, hit: [Hit]? = nil, start: Int64? = nil) {
            self.start = start
            self.hit = hit
            self.cursor = cursor
            self.found = found
        }

        private enum CodingKeys: String, CodingKey {
            case start = "start"
            case hit = "hit"
            case cursor = "cursor"
            case found = "found"
        }
    }

    public struct BucketInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "buckets", required: false, type: .list)
        ]
        /// A list of the calculated facet values and counts.
        public let buckets: [Bucket]?

        public init(buckets: [Bucket]? = nil) {
            self.buckets = buckets
        }

        private enum CodingKeys: String, CodingKey {
            case buckets = "buckets"
        }
    }

    public struct Hit: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "fields", required: false, type: .map), 
            AWSShapeMember(label: "highlights", required: false, type: .map), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "exprs", required: false, type: .map)
        ]
        /// The fields returned from a document that matches the search request.
        public let fields: [String: [String]]?
        /// The highlights returned from a document that matches the search request.
        public let highlights: [String: String]?
        /// The document ID of a document that matches the search request.
        public let id: String?
        /// The expressions returned from a document that matches the search request.
        public let exprs: [String: String]?

        public init(exprs: [String: String]? = nil, fields: [String: [String]]? = nil, highlights: [String: String]? = nil, id: String? = nil) {
            self.fields = fields
            self.highlights = highlights
            self.id = id
            self.exprs = exprs
        }

        private enum CodingKeys: String, CodingKey {
            case fields = "fields"
            case highlights = "highlights"
            case id = "id"
            case exprs = "exprs"
        }
    }

    public struct Bucket: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "value", required: false, type: .string), 
            AWSShapeMember(label: "count", required: false, type: .long)
        ]
        /// The facet value being counted.
        public let value: String?
        /// The number of hits that contain the facet value in the specified facet field.
        public let count: Int64?

        public init(count: Int64? = nil, value: String? = nil) {
            self.value = value
            self.count = count
        }

        private enum CodingKeys: String, CodingKey {
            case value = "value"
            case count = "count"
        }
    }

    public struct SuggestResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "suggest", required: false, type: .structure), 
            AWSShapeMember(label: "status", required: false, type: .structure)
        ]
        /// Container for the matching search suggestion information.
        public let suggest: SuggestModel?
        /// The status of a SuggestRequest. Contains the resource ID (rid) and how long it took to process the request (timems).
        public let status: SuggestStatus?

        public init(status: SuggestStatus? = nil, suggest: SuggestModel? = nil) {
            self.suggest = suggest
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case suggest = "suggest"
            case status = "status"
        }
    }

    public enum ContentType: String, CustomStringConvertible, Codable {
        case applicationJson = "application/json"
        case applicationXml = "application/xml"
        public var description: String { return self.rawValue }
    }

    public struct FieldStats: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "sumOfSquares", required: false, type: .double), 
            AWSShapeMember(label: "count", required: false, type: .long), 
            AWSShapeMember(label: "min", required: false, type: .string), 
            AWSShapeMember(label: "stddev", required: false, type: .double), 
            AWSShapeMember(label: "max", required: false, type: .string), 
            AWSShapeMember(label: "missing", required: false, type: .long), 
            AWSShapeMember(label: "mean", required: false, type: .string), 
            AWSShapeMember(label: "sum", required: false, type: .double)
        ]
        /// The sum of all field values in the result set squared.
        public let sumOfSquares: Double?
        /// The number of documents that contain a value in the specified field in the result set.
        public let count: Int64?
        /// The minimum value found in the specified field in the result set. If the field is numeric (int, int-array, double, or double-array), min is the string representation of a double-precision 64-bit floating point value. If the field is date or date-array, min is the string representation of a date with the format specified in IETF RFC3339: yyyy-mm-ddTHH:mm:ss.SSSZ.
        public let min: String?
        /// The standard deviation of the values in the specified field in the result set.
        public let stddev: Double?
        /// The maximum value found in the specified field in the result set. If the field is numeric (int, int-array, double, or double-array), max is the string representation of a double-precision 64-bit floating point value. If the field is date or date-array, max is the string representation of a date with the format specified in IETF RFC3339: yyyy-mm-ddTHH:mm:ss.SSSZ.
        public let max: String?
        /// The number of documents that do not contain a value in the specified field in the result set.
        public let missing: Int64?
        /// The average of the values found in the specified field in the result set. If the field is numeric (int, int-array, double, or double-array), mean is the string representation of a double-precision 64-bit floating point value. If the field is date or date-array, mean is the string representation of a date with the format specified in IETF RFC3339: yyyy-mm-ddTHH:mm:ss.SSSZ.
        public let mean: String?
        /// The sum of the field values across the documents in the result set. null for date fields.
        public let sum: Double?

        public init(count: Int64? = nil, max: String? = nil, mean: String? = nil, min: String? = nil, missing: Int64? = nil, stddev: Double? = nil, sum: Double? = nil, sumOfSquares: Double? = nil) {
            self.sumOfSquares = sumOfSquares
            self.count = count
            self.min = min
            self.stddev = stddev
            self.max = max
            self.missing = missing
            self.mean = mean
            self.sum = sum
        }

        private enum CodingKeys: String, CodingKey {
            case sumOfSquares = "sumOfSquares"
            case count = "count"
            case min = "min"
            case stddev = "stddev"
            case max = "max"
            case missing = "missing"
            case mean = "mean"
            case sum = "sum"
        }
    }

    public struct SearchRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "expr", location: .querystring(locationName: "expr"), required: false, type: .string), 
            AWSShapeMember(label: "filterQuery", location: .querystring(locationName: "fq"), required: false, type: .string), 
            AWSShapeMember(label: "size", location: .querystring(locationName: "size"), required: false, type: .long), 
            AWSShapeMember(label: "return", location: .querystring(locationName: "return"), required: false, type: .string), 
            AWSShapeMember(label: "sort", location: .querystring(locationName: "sort"), required: false, type: .string), 
            AWSShapeMember(label: "queryParser", location: .querystring(locationName: "q.parser"), required: false, type: .enum), 
            AWSShapeMember(label: "facet", location: .querystring(locationName: "facet"), required: false, type: .string), 
            AWSShapeMember(label: "queryOptions", location: .querystring(locationName: "q.options"), required: false, type: .string), 
            AWSShapeMember(label: "stats", location: .querystring(locationName: "stats"), required: false, type: .string), 
            AWSShapeMember(label: "start", location: .querystring(locationName: "start"), required: false, type: .long), 
            AWSShapeMember(label: "query", location: .querystring(locationName: "q"), required: true, type: .string), 
            AWSShapeMember(label: "partial", location: .querystring(locationName: "partial"), required: false, type: .boolean), 
            AWSShapeMember(label: "highlight", location: .querystring(locationName: "highlight"), required: false, type: .string), 
            AWSShapeMember(label: "cursor", location: .querystring(locationName: "cursor"), required: false, type: .string)
        ]
        /// Defines one or more numeric expressions that can be used to sort results or specify search or filter criteria. You can also specify expressions as return fields.  You specify the expressions in JSON using the form {"EXPRESSIONNAME":"EXPRESSION"}. You can define and use multiple expressions in a search request. For example:  {"expression1":"_score*rating", "expression2":"(1/rank)*year"}   For information about the variables, operators, and functions you can use in expressions, see Writing Expressions in the Amazon CloudSearch Developer Guide.
        public let expr: String?
        /// Specifies a structured query that filters the results of a search without affecting how the results are scored and sorted. You use filterQuery in conjunction with the query parameter to filter the documents that match the constraints specified in the query parameter. Specifying a filter controls only which matching documents are included in the results, it has no effect on how they are scored and sorted. The filterQuery parameter supports the full structured query syntax.  For more information about using filters, see Filtering Matching Documents in the Amazon CloudSearch Developer Guide.
        public let filterQuery: String?
        /// Specifies the maximum number of search hits to include in the response. 
        public let size: Int64?
        /// Specifies the field and expression values to include in the response. Multiple fields or expressions are specified as a comma-separated list. By default, a search response includes all return enabled fields (_all_fields). To return only the document IDs for the matching documents, specify _no_fields. To retrieve the relevance score calculated for each document, specify _score. 
        public let `return`: String?
        /// Specifies the fields or custom expressions to use to sort the search results. Multiple fields or expressions are specified as a comma-separated list. You must specify the sort direction (asc or desc) for each field; for example, year desc,title asc. To use a field to sort results, the field must be sort-enabled in the domain configuration. Array type fields cannot be used for sorting. If no sort parameter is specified, results are sorted by their default relevance scores in descending order: _score desc. You can also sort by document ID (_id asc) and version (_version desc). For more information, see Sorting Results in the Amazon CloudSearch Developer Guide.
        public let sort: String?
        /// Specifies which query parser to use to process the request. If queryParser is not specified, Amazon CloudSearch uses the simple query parser.  Amazon CloudSearch supports four query parsers:   simple: perform simple searches of text and text-array fields. By default, the simple query parser searches all text and text-array fields. You can specify which fields to search by with the queryOptions parameter. If you prefix a search term with a plus sign (+) documents must contain the term to be considered a match. (This is the default, unless you configure the default operator with the queryOptions parameter.) You can use the - (NOT), | (OR), and * (wildcard) operators to exclude particular terms, find results that match any of the specified terms, or search for a prefix. To search for a phrase rather than individual terms, enclose the phrase in double quotes. For more information, see Searching for Text in the Amazon CloudSearch Developer Guide.   structured: perform advanced searches by combining multiple expressions to define the search criteria. You can also search within particular fields, search for values and ranges of values, and use advanced options such as term boosting, matchall, and near. For more information, see Constructing Compound Queries in the Amazon CloudSearch Developer Guide.   lucene: search using the Apache Lucene query parser syntax. For more information, see Apache Lucene Query Parser Syntax.   dismax: search using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser. For more information, see DisMax Query Parser Syntax.  
        public let queryParser: QueryParser?
        /// Specifies one or more fields for which to get facet information, and options that control how the facet information is returned. Each specified field must be facet-enabled in the domain configuration. The fields and options are specified in JSON using the form {"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}. You can specify the following faceting options:   buckets specifies an array of the facet values or ranges to count. Ranges are specified using the same syntax that you use to search for a range of values. For more information, see  Searching for a Range of Values in the Amazon CloudSearch Developer Guide. Buckets are returned in the order they are specified in the request. The sort and size options are not valid if you specify buckets.   size specifies the maximum number of facets to include in the results. By default, Amazon CloudSearch returns counts for the top 10. The size parameter is only valid when you specify the sort option; it cannot be used in conjunction with buckets.   sort specifies how you want to sort the facets in the results: bucket or count. Specify bucket to sort alphabetically or numerically by facet value (in ascending order). Specify count to sort by the facet counts computed for each facet value (in descending order). To retrieve facet counts for particular values or ranges of values, use the buckets option instead of sort.    If no facet options are specified, facet counts are computed for all field values, the facets are sorted by facet count, and the top 10 facets are returned in the results. To count particular buckets of values, use the buckets option. For example, the following request uses the buckets option to calculate and return facet counts by decade.  {"year":{"buckets":["[1970,1979]","[1980,1989]","[1990,1999]","[2000,2009]","[2010,}"]}}  To sort facets by facet count, use the count option. For example, the following request sets the sort option to count to sort the facet values by facet count, with the facet values that have the most matching documents listed first. Setting the size option to 3 returns only the top three facet values.  {"year":{"sort":"count","size":3}}  To sort the facets by value, use the bucket option. For example, the following request sets the sort option to bucket to sort the facet values numerically by year, with earliest year listed first.   {"year":{"sort":"bucket"}}  For more information, see Getting and Using Facet Information in the Amazon CloudSearch Developer Guide.
        public let facet: String?
        /// Configures options for the query parser specified in the queryParser parameter. You specify the options in JSON using the following form {"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"}. The options you can configure vary according to which parser you use:  defaultOperator: The default operator used to combine individual terms in the search string. For example: defaultOperator: 'or'. For the dismax parser, you specify a percentage that represents the percentage of terms in the search string (rounded down) that must match, rather than a default operator. A value of 0% is the equivalent to OR, and a value of 100% is equivalent to AND. The percentage must be specified as a value in the range 0-100 followed by the percent (%) symbol. For example, defaultOperator: 50%. Valid values: and, or, a percentage in the range 0%-100% (dismax). Default: and (simple, structured, lucene) or 100 (dismax). Valid for: simple, structured, lucene, and dismax. fields: An array of the fields to search when no fields are specified in a search. If no fields are specified in a search and this option is not specified, all text and text-array fields are searched. You can specify a weight for each field to control the relative importance of each field when Amazon CloudSearch calculates relevance scores. To specify a field weight, append a caret (^) symbol and the weight to the field name. For example, to boost the importance of the title field over the description field you could specify: "fields":["title^5","description"]. Valid values: The name of any configured field and an optional numeric value greater than zero. Default: All text and text-array fields. Valid for: simple, structured, lucene, and dismax. operators: An array of the operators or special characters you want to disable for the simple query parser. If you disable the and, or, or not operators, the corresponding operators (+, |, -) have no special meaning and are dropped from the search string. Similarly, disabling prefix disables the wildcard operator (*) and disabling phrase disables the ability to search for phrases by enclosing phrases in double quotes. Disabling precedence disables the ability to control order of precedence using parentheses. Disabling near disables the ability to use the ~ operator to perform a sloppy phrase search. Disabling the fuzzy operator disables the ability to use the ~ operator to perform a fuzzy search. escape disables the ability to use a backslash (\) to escape special characters within the search string. Disabling whitespace is an advanced option that prevents the parser from tokenizing on whitespace, which can be useful for Vietnamese. (It prevents Vietnamese words from being split incorrectly.) For example, you could disable all operators other than the phrase operator to support just simple term and phrase queries: "operators":["and","not","or", "prefix"]. Valid values: and, escape, fuzzy, near, not, or, phrase, precedence, prefix, whitespace. Default: All operators and special characters are enabled. Valid for: simple. phraseFields: An array of the text or text-array fields you want to use for phrase searches. When the terms in the search string appear in close proximity within a field, the field scores higher. You can specify a weight for each field to boost that score. The phraseSlop option controls how much the matches can deviate from the search string and still be boosted. To specify a field weight, append a caret (^) symbol and the weight to the field name. For example, to boost phrase matches in the title field over the abstract field, you could specify: "phraseFields":["title^3", "plot"] Valid values: The name of any text or text-array field and an optional numeric value greater than zero. Default: No fields. If you don't specify any fields with phraseFields, proximity scoring is disabled even if phraseSlop is specified. Valid for: dismax. phraseSlop: An integer value that specifies how much matches can deviate from the search phrase and still be boosted according to the weights specified in the phraseFields option; for example, phraseSlop: 2. You must also specify phraseFields to enable proximity scoring. Valid values: positive integers. Default: 0. Valid for: dismax. explicitPhraseSlop: An integer value that specifies how much a match can deviate from the search phrase when the phrase is enclosed in double quotes in the search string. (Phrases that exceed this proximity distance are not considered a match.) For example, to specify a slop of three for dismax phrase queries, you would specify "explicitPhraseSlop":3. Valid values: positive integers. Default: 0. Valid for: dismax. tieBreaker: When a term in the search string is found in a document's field, a score is calculated for that field based on how common the word is in that field compared to other documents. If the term occurs in multiple fields within a document, by default only the highest scoring field contributes to the document's overall score. You can specify a tieBreaker value to enable the matches in lower-scoring fields to contribute to the document's score. That way, if two documents have the same max field score for a particular term, the score for the document that has matches in more fields will be higher. The formula for calculating the score with a tieBreaker is (max field score) + (tieBreaker) * (sum of the scores for the rest of the matching fields). Set tieBreaker to 0 to disregard all but the highest scoring field (pure max): "tieBreaker":0. Set to 1 to sum the scores from all fields (pure sum): "tieBreaker":1. Valid values: 0.0 to 1.0. Default: 0.0. Valid for: dismax.  
        public let queryOptions: String?
        /// Specifies one or more fields for which to get statistics information. Each specified field must be facet-enabled in the domain configuration. The fields are specified in JSON using the form: {"FIELD-A":{},"FIELD-B":{}} There are currently no options supported for statistics.
        public let stats: String?
        /// Specifies the offset of the first search hit you want to return. Note that the result set is zero-based; the first result is at index 0. You can specify either the start or cursor parameter in a request, they are mutually exclusive.  For more information, see Paginating Results in the Amazon CloudSearch Developer Guide.
        public let start: Int64?
        /// Specifies the search criteria for the request. How you specify the search criteria depends on the query parser used for the request and the parser options specified in the queryOptions parameter. By default, the simple query parser is used to process requests. To use the structured, lucene, or dismax query parser, you must also specify the queryParser parameter.  For more information about specifying search criteria, see Searching Your Data in the Amazon CloudSearch Developer Guide.
        public let query: String
        /// Enables partial results to be returned if one or more index partitions are unavailable. When your search index is partitioned across multiple search instances, by default Amazon CloudSearch only returns results if every partition can be queried. This means that the failure of a single search instance can result in 5xx (internal server) errors. When you enable partial results, Amazon CloudSearch returns whatever results are available and includes the percentage of documents searched in the search results (percent-searched). This enables you to more gracefully degrade your users' search experience. For example, rather than displaying no results, you could display the partial results and a message indicating that the results might be incomplete due to a temporary system outage.
        public let partial: Bool?
        /// Retrieves highlights for matches in the specified text or text-array fields. Each specified field must be highlight enabled in the domain configuration. The fields and options are specified in JSON using the form {"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}. You can specify the following highlight options:   format: specifies the format of the data in the text field: text or html. When data is returned as HTML, all non-alphanumeric characters are encoded. The default is html.   max_phrases: specifies the maximum number of occurrences of the search term(s) you want to highlight. By default, the first occurrence is highlighted.   pre_tag: specifies the string to prepend to an occurrence of a search term. The default for HTML highlights is &amp;lt;em&amp;gt;. The default for text highlights is *.   post_tag: specifies the string to append to an occurrence of a search term. The default for HTML highlights is &amp;lt;/em&amp;gt;. The default for text highlights is *.   If no highlight options are specified for a field, the returned field text is treated as HTML and the first match is highlighted with emphasis tags: &amp;lt;em&gt;search-term&amp;lt;/em&amp;gt;. For example, the following request retrieves highlights for the actors and title fields.  { "actors": {}, "title": {"format": "text","max_phrases": 2,"pre_tag": "","post_tag": ""} }
        public let highlight: String?
        /// Retrieves a cursor value you can use to page through large result sets. Use the size parameter to control the number of hits to include in each response. You can specify either the cursor or start parameter in a request; they are mutually exclusive. To get the first cursor, set the cursor value to initial. In subsequent requests, specify the cursor value returned in the hits section of the response.  For more information, see Paginating Results in the Amazon CloudSearch Developer Guide.
        public let cursor: String?

        public init(cursor: String? = nil, expr: String? = nil, facet: String? = nil, filterQuery: String? = nil, highlight: String? = nil, partial: Bool? = nil, query: String, queryOptions: String? = nil, queryParser: QueryParser? = nil, return: String? = nil, size: Int64? = nil, sort: String? = nil, start: Int64? = nil, stats: String? = nil) {
            self.expr = expr
            self.filterQuery = filterQuery
            self.size = size
            self.`return` = `return`
            self.sort = sort
            self.queryParser = queryParser
            self.facet = facet
            self.queryOptions = queryOptions
            self.stats = stats
            self.start = start
            self.query = query
            self.partial = partial
            self.highlight = highlight
            self.cursor = cursor
        }

        private enum CodingKeys: String, CodingKey {
            case expr = "expr"
            case filterQuery = "fq"
            case size = "size"
            case `return` = "return"
            case sort = "sort"
            case queryParser = "q.parser"
            case facet = "facet"
            case queryOptions = "q.options"
            case stats = "stats"
            case start = "start"
            case query = "q"
            case partial = "partial"
            case highlight = "highlight"
            case cursor = "cursor"
        }
    }

    public struct UploadDocumentsRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "documents"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "documents", required: true, type: .blob), 
            AWSShapeMember(label: "contentType", location: .header(locationName: "Content-Type"), required: true, type: .enum)
        ]
        /// A batch of documents formatted in JSON or HTML.
        public let documents: Data
        /// The format of the batch you are uploading. Amazon CloudSearch supports two document batch formats:  application/json application/xml 
        public let contentType: ContentType

        public init(contentType: ContentType, documents: Data) {
            self.documents = documents
            self.contentType = contentType
        }

        private enum CodingKeys: String, CodingKey {
            case documents = "documents"
            case contentType = "Content-Type"
        }
    }

    public struct UploadDocumentsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "status", required: false, type: .string), 
            AWSShapeMember(label: "warnings", required: false, type: .list), 
            AWSShapeMember(label: "deletes", required: false, type: .long), 
            AWSShapeMember(label: "adds", required: false, type: .long)
        ]
        /// The status of an UploadDocumentsRequest.
        public let status: String?
        /// Any warnings returned by the document service about the documents being uploaded.
        public let warnings: [DocumentServiceWarning]?
        /// The number of documents that were deleted from the search domain.
        public let deletes: Int64?
        /// The number of documents that were added to the search domain.
        public let adds: Int64?

        public init(adds: Int64? = nil, deletes: Int64? = nil, status: String? = nil, warnings: [DocumentServiceWarning]? = nil) {
            self.status = status
            self.warnings = warnings
            self.deletes = deletes
            self.adds = adds
        }

        private enum CodingKeys: String, CodingKey {
            case status = "status"
            case warnings = "warnings"
            case deletes = "deletes"
            case adds = "adds"
        }
    }

    public struct DocumentServiceWarning: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "message", required: false, type: .string)
        ]
        /// The description for a warning returned by the document service.
        public let message: String?

        public init(message: String? = nil) {
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case message = "message"
        }
    }

    public struct SuggestRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "size", location: .querystring(locationName: "size"), required: false, type: .long), 
            AWSShapeMember(label: "suggester", location: .querystring(locationName: "suggester"), required: true, type: .string), 
            AWSShapeMember(label: "query", location: .querystring(locationName: "q"), required: true, type: .string)
        ]
        /// Specifies the maximum number of suggestions to return. 
        public let size: Int64?
        /// Specifies the name of the suggester to use to find suggested matches.
        public let suggester: String
        /// Specifies the string for which you want to get suggestions.
        public let query: String

        public init(query: String, size: Int64? = nil, suggester: String) {
            self.size = size
            self.suggester = suggester
            self.query = query
        }

        private enum CodingKeys: String, CodingKey {
            case size = "size"
            case suggester = "suggester"
            case query = "q"
        }
    }

    public struct SearchStatus: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "rid", required: false, type: .string), 
            AWSShapeMember(label: "timems", required: false, type: .long)
        ]
        /// The encrypted resource ID for the request.
        public let rid: String?
        /// How long it took to process the request, in milliseconds.
        public let timems: Int64?

        public init(rid: String? = nil, timems: Int64? = nil) {
            self.rid = rid
            self.timems = timems
        }

        private enum CodingKeys: String, CodingKey {
            case rid = "rid"
            case timems = "timems"
        }
    }

    public struct SuggestionMatch: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "suggestion", required: false, type: .string), 
            AWSShapeMember(label: "score", required: false, type: .long), 
            AWSShapeMember(label: "id", required: false, type: .string)
        ]
        /// The string that matches the query string specified in the SuggestRequest. 
        public let suggestion: String?
        /// The relevance score of a suggested match.
        public let score: Int64?
        /// The document ID of the suggested document.
        public let id: String?

        public init(id: String? = nil, score: Int64? = nil, suggestion: String? = nil) {
            self.suggestion = suggestion
            self.score = score
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case suggestion = "suggestion"
            case score = "score"
            case id = "id"
        }
    }

    public struct SuggestModel: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "found", required: false, type: .long), 
            AWSShapeMember(label: "suggestions", required: false, type: .list), 
            AWSShapeMember(label: "query", required: false, type: .string)
        ]
        /// The number of documents that were found to match the query string.
        public let found: Int64?
        /// The documents that match the query string.
        public let suggestions: [SuggestionMatch]?
        /// The query string specified in the suggest request.
        public let query: String?

        public init(found: Int64? = nil, query: String? = nil, suggestions: [SuggestionMatch]? = nil) {
            self.found = found
            self.suggestions = suggestions
            self.query = query
        }

        private enum CodingKeys: String, CodingKey {
            case found = "found"
            case suggestions = "suggestions"
            case query = "query"
        }
    }

    public enum QueryParser: String, CustomStringConvertible, Codable {
        case simple = "simple"
        case structured = "structured"
        case lucene = "lucene"
        case dismax = "dismax"
        public var description: String { return self.rawValue }
    }

    public struct SearchResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "stats", required: false, type: .map), 
            AWSShapeMember(label: "hits", required: false, type: .structure), 
            AWSShapeMember(label: "facets", required: false, type: .map), 
            AWSShapeMember(label: "status", required: false, type: .structure)
        ]
        /// The requested field statistics information.
        public let stats: [String: FieldStats]?
        /// The documents that match the search criteria.
        public let hits: Hits?
        /// The requested facet information.
        public let facets: [String: BucketInfo]?
        /// The status information returned for the search request.
        public let status: SearchStatus?

        public init(facets: [String: BucketInfo]? = nil, hits: Hits? = nil, stats: [String: FieldStats]? = nil, status: SearchStatus? = nil) {
            self.stats = stats
            self.hits = hits
            self.facets = facets
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case stats = "stats"
            case hits = "hits"
            case facets = "facets"
            case status = "status"
        }
    }

}