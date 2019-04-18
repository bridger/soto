// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension RDSDataService {

    public struct ExecuteSqlRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "awsSecretStoreArn", required: true, type: .string), 
            AWSShapeMember(label: "database", required: false, type: .string), 
            AWSShapeMember(label: "schema", required: false, type: .string), 
            AWSShapeMember(label: "sqlStatements", required: true, type: .string), 
            AWSShapeMember(label: "dbClusterOrInstanceArn", required: true, type: .string)
        ]
        /// ARN of the db credentials in AWS Secret Store or the friendly secret name
        public let awsSecretStoreArn: String
        /// Target DB name
        public let database: String?
        /// Target Schema name
        public let schema: String?
        /// SQL statement(s) to be executed. Statements can be chained by using semicolons
        public let sqlStatements: String
        /// ARN of the target db cluster or instance
        public let dbClusterOrInstanceArn: String

        public init(awsSecretStoreArn: String, database: String? = nil, dbClusterOrInstanceArn: String, schema: String? = nil, sqlStatements: String) {
            self.awsSecretStoreArn = awsSecretStoreArn
            self.database = database
            self.schema = schema
            self.sqlStatements = sqlStatements
            self.dbClusterOrInstanceArn = dbClusterOrInstanceArn
        }

        private enum CodingKeys: String, CodingKey {
            case awsSecretStoreArn = "awsSecretStoreArn"
            case database = "database"
            case schema = "schema"
            case sqlStatements = "sqlStatements"
            case dbClusterOrInstanceArn = "dbClusterOrInstanceArn"
        }
    }

    public struct ExecuteSqlResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "sqlStatementResults", required: true, type: .list)
        ]
        /// Results returned by executing the sql statement(s)
        public let sqlStatementResults: [SqlStatementResult]

        public init(sqlStatementResults: [SqlStatementResult]) {
            self.sqlStatementResults = sqlStatementResults
        }

        private enum CodingKeys: String, CodingKey {
            case sqlStatementResults = "sqlStatementResults"
        }
    }

    public struct Record: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "values", required: false, type: .list)
        ]
        /// Record
        public let values: [Value]?

        public init(values: [Value]? = nil) {
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case values = "values"
        }
    }

    public class Value: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "doubleValue", required: false, type: .double), 
            AWSShapeMember(label: "realValue", required: false, type: .float), 
            AWSShapeMember(label: "intValue", required: false, type: .integer), 
            AWSShapeMember(label: "bigIntValue", required: false, type: .long), 
            AWSShapeMember(label: "isNull", required: false, type: .boolean), 
            AWSShapeMember(label: "blobValue", required: false, type: .blob), 
            AWSShapeMember(label: "arrayValues", required: false, type: .list), 
            AWSShapeMember(label: "structValue", required: false, type: .structure), 
            AWSShapeMember(label: "bitValue", required: false, type: .boolean), 
            AWSShapeMember(label: "stringValue", required: false, type: .string)
        ]
        /// Double value
        public let doubleValue: Double?
        /// Float value
        public let realValue: Float?
        /// Integer value
        public let intValue: Int32?
        /// Long value
        public let bigIntValue: Int64?
        /// Is column null
        public let isNull: Bool?
        /// Blob value
        public let blobValue: Data?
        /// Arbitrarily nested arrays
        public let arrayValues: [Value]?
        /// Struct or UDT
        public let structValue: StructValue?
        /// Bit value
        public let bitValue: Bool?
        /// String value
        public let stringValue: String?

        public init(arrayValues: [Value]? = nil, bigIntValue: Int64? = nil, bitValue: Bool? = nil, blobValue: Data? = nil, doubleValue: Double? = nil, intValue: Int32? = nil, isNull: Bool? = nil, realValue: Float? = nil, stringValue: String? = nil, structValue: StructValue? = nil) {
            self.doubleValue = doubleValue
            self.realValue = realValue
            self.intValue = intValue
            self.bigIntValue = bigIntValue
            self.isNull = isNull
            self.blobValue = blobValue
            self.arrayValues = arrayValues
            self.structValue = structValue
            self.bitValue = bitValue
            self.stringValue = stringValue
        }

        private enum CodingKeys: String, CodingKey {
            case doubleValue = "doubleValue"
            case realValue = "realValue"
            case intValue = "intValue"
            case bigIntValue = "bigIntValue"
            case isNull = "isNull"
            case blobValue = "blobValue"
            case arrayValues = "arrayValues"
            case structValue = "structValue"
            case bitValue = "bitValue"
            case stringValue = "stringValue"
        }
    }

    public struct ResultSetMetadata: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "columnMetadata", required: false, type: .list), 
            AWSShapeMember(label: "columnCount", required: false, type: .long)
        ]
        /// List of columns and their types
        public let columnMetadata: [ColumnMetadata]?
        /// Number of columns
        public let columnCount: Int64?

        public init(columnCount: Int64? = nil, columnMetadata: [ColumnMetadata]? = nil) {
            self.columnMetadata = columnMetadata
            self.columnCount = columnCount
        }

        private enum CodingKeys: String, CodingKey {
            case columnMetadata = "columnMetadata"
            case columnCount = "columnCount"
        }
    }

    public struct ColumnMetadata: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "precision", required: false, type: .integer), 
            AWSShapeMember(label: "isAutoIncrement", required: false, type: .boolean), 
            AWSShapeMember(label: "arrayBaseColumnType", required: false, type: .integer), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "nullable", required: false, type: .integer), 
            AWSShapeMember(label: "scale", required: false, type: .integer), 
            AWSShapeMember(label: "isCurrency", required: false, type: .boolean), 
            AWSShapeMember(label: "isSigned", required: false, type: .boolean), 
            AWSShapeMember(label: "isCaseSensitive", required: false, type: .boolean), 
            AWSShapeMember(label: "label", required: false, type: .string), 
            AWSShapeMember(label: "tableName", required: false, type: .string), 
            AWSShapeMember(label: "schemaName", required: false, type: .string), 
            AWSShapeMember(label: "type", required: false, type: .integer), 
            AWSShapeMember(label: "typeName", required: false, type: .string)
        ]
        /// Get the designated column's specified column size.For numeric data, this is the maximum precision.  For character data, this is the length in characters. For datetime datatypes, this is the length in characters of the String representation (assuming the maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes.  For the ROWID datatype, this is the length in bytes. 0 is returned for data types where the column size is not applicable.
        public let precision: Int32?
        /// Whether the designated column is automatically numbered
        public let isAutoIncrement: Bool?
        /// Homogenous array base SQL type from java.sql.Types.
        public let arrayBaseColumnType: Int32?
        /// Name of the column.
        public let name: String?
        /// Indicates the nullability of values in the designated column. One of columnNoNulls (0), columnNullable (1), columnNullableUnknown (2)
        public let nullable: Int32?
        /// Designated column's number of digits to right of the decimal point. 0 is returned for data types where the scale is not applicable.
        public let scale: Int32?
        /// Whether values in the designated column is a cash value
        public let isCurrency: Bool?
        /// Whether values in the designated column are signed numbers
        public let isSigned: Bool?
        /// Whether values in the designated column's case matters
        public let isCaseSensitive: Bool?
        /// Usually specified by the SQL AS. If not specified, return column name.
        public let label: String?
        /// Designated column's table name
        public let tableName: String?
        /// Designated column's table's schema
        public let schemaName: String?
        /// SQL type from java.sql.Types.
        public let `type`: Int32?
        /// Database-specific type name.
        public let typeName: String?

        public init(arrayBaseColumnType: Int32? = nil, isAutoIncrement: Bool? = nil, isCaseSensitive: Bool? = nil, isCurrency: Bool? = nil, isSigned: Bool? = nil, label: String? = nil, name: String? = nil, nullable: Int32? = nil, precision: Int32? = nil, scale: Int32? = nil, schemaName: String? = nil, tableName: String? = nil, type: Int32? = nil, typeName: String? = nil) {
            self.precision = precision
            self.isAutoIncrement = isAutoIncrement
            self.arrayBaseColumnType = arrayBaseColumnType
            self.name = name
            self.nullable = nullable
            self.scale = scale
            self.isCurrency = isCurrency
            self.isSigned = isSigned
            self.isCaseSensitive = isCaseSensitive
            self.label = label
            self.tableName = tableName
            self.schemaName = schemaName
            self.`type` = `type`
            self.typeName = typeName
        }

        private enum CodingKeys: String, CodingKey {
            case precision = "precision"
            case isAutoIncrement = "isAutoIncrement"
            case arrayBaseColumnType = "arrayBaseColumnType"
            case name = "name"
            case nullable = "nullable"
            case scale = "scale"
            case isCurrency = "isCurrency"
            case isSigned = "isSigned"
            case isCaseSensitive = "isCaseSensitive"
            case label = "label"
            case tableName = "tableName"
            case schemaName = "schemaName"
            case `type` = "type"
            case typeName = "typeName"
        }
    }

    public struct ResultFrame: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resultSetMetadata", required: false, type: .structure), 
            AWSShapeMember(label: "records", required: false, type: .list)
        ]
        /// ResultSet Metadata.
        public let resultSetMetadata: ResultSetMetadata?
        /// ResultSet Metadata.
        public let records: [Record]?

        public init(records: [Record]? = nil, resultSetMetadata: ResultSetMetadata? = nil) {
            self.resultSetMetadata = resultSetMetadata
            self.records = records
        }

        private enum CodingKeys: String, CodingKey {
            case resultSetMetadata = "resultSetMetadata"
            case records = "records"
        }
    }

    public struct StructValue: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .list)
        ]
        /// Struct or UDT
        public let attributes: [Value]?

        public init(attributes: [Value]? = nil) {
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
        }
    }

    public struct SqlStatementResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resultFrame", required: false, type: .structure), 
            AWSShapeMember(label: "numberOfRecordsUpdated", required: false, type: .long)
        ]
        /// ResultFrame returned by executing the sql statement
        public let resultFrame: ResultFrame?
        /// Number of rows updated.
        public let numberOfRecordsUpdated: Int64?

        public init(numberOfRecordsUpdated: Int64? = nil, resultFrame: ResultFrame? = nil) {
            self.resultFrame = resultFrame
            self.numberOfRecordsUpdated = numberOfRecordsUpdated
        }

        private enum CodingKeys: String, CodingKey {
            case resultFrame = "resultFrame"
            case numberOfRecordsUpdated = "numberOfRecordsUpdated"
        }
    }

}