//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, date: String? = nil, planterId: GraphQLID, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: GraphQLID {
    get {
      return graphQLMap["planterID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: Double? {
    get {
      return graphQLMap["temperature"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: Double? {
    get {
      return graphQLMap["humidity"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: Double? {
    get {
      return graphQLMap["weight"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct ModelRecordConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(date: ModelStringInput? = nil, planterId: ModelIDInput? = nil, temperature: ModelFloatInput? = nil, humidity: ModelFloatInput? = nil, weight: ModelFloatInput? = nil, and: [ModelRecordConditionInput?]? = nil, or: [ModelRecordConditionInput?]? = nil, not: ModelRecordConditionInput? = nil) {
    graphQLMap = ["date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: ModelIDInput? {
    get {
      return graphQLMap["planterID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: ModelFloatInput? {
    get {
      return graphQLMap["temperature"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: ModelFloatInput? {
    get {
      return graphQLMap["humidity"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: ModelFloatInput? {
    get {
      return graphQLMap["weight"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelRecordConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelRecordConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelRecordConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelRecordConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelRecordConditionInput? {
    get {
      return graphQLMap["not"] as! ModelRecordConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelFloatInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, eq: Double? = nil, le: Double? = nil, lt: Double? = nil, ge: Double? = nil, gt: Double? = nil, between: [Double?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Double? {
    get {
      return graphQLMap["le"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Double? {
    get {
      return graphQLMap["ge"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Double?]? {
    get {
      return graphQLMap["between"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: GraphQLID? {
    get {
      return graphQLMap["planterID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: Double? {
    get {
      return graphQLMap["temperature"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: Double? {
    get {
      return graphQLMap["humidity"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: Double? {
    get {
      return graphQLMap["weight"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct DeleteRecordInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreatePlanterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, userId: GraphQLID) {
    graphQLMap = ["id": id, "userID": userId]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }
}

public struct ModelPlanterConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(userId: ModelIDInput? = nil, and: [ModelPlanterConditionInput?]? = nil, or: [ModelPlanterConditionInput?]? = nil, not: ModelPlanterConditionInput? = nil) {
    graphQLMap = ["userID": userId, "and": and, "or": or, "not": not]
  }

  public var userId: ModelIDInput? {
    get {
      return graphQLMap["userID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var and: [ModelPlanterConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPlanterConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPlanterConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPlanterConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPlanterConditionInput? {
    get {
      return graphQLMap["not"] as! ModelPlanterConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdatePlanterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, userId: GraphQLID? = nil) {
    graphQLMap = ["id": id, "userID": userId]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: GraphQLID? {
    get {
      return graphQLMap["userID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }
}

public struct DeletePlanterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, name: String) {
    graphQLMap = ["id": id, "name": name]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["name": name, "and": and, "or": or, "not": not]
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, name: String? = nil) {
    graphQLMap = ["id": id, "name": name]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String? {
    get {
      return graphQLMap["name"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateCurrentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: GraphQLID {
    get {
      return graphQLMap["planterID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: Int? {
    get {
      return graphQLMap["temperature"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: Int? {
    get {
      return graphQLMap["humidity"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: Int? {
    get {
      return graphQLMap["weight"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct ModelCurrentConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(date: ModelStringInput? = nil, planterId: ModelIDInput? = nil, temperature: ModelIntInput? = nil, humidity: ModelIntInput? = nil, weight: ModelIntInput? = nil, and: [ModelCurrentConditionInput?]? = nil, or: [ModelCurrentConditionInput?]? = nil, not: ModelCurrentConditionInput? = nil) {
    graphQLMap = ["date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: ModelIDInput? {
    get {
      return graphQLMap["planterID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: ModelIntInput? {
    get {
      return graphQLMap["temperature"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: ModelIntInput? {
    get {
      return graphQLMap["humidity"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: ModelIntInput? {
    get {
      return graphQLMap["weight"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelCurrentConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCurrentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCurrentConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCurrentConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCurrentConditionInput? {
    get {
      return graphQLMap["not"] as! ModelCurrentConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct UpdateCurrentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID? = nil, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String? {
    get {
      return graphQLMap["date"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: GraphQLID? {
    get {
      return graphQLMap["planterID"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: Int? {
    get {
      return graphQLMap["temperature"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: Int? {
    get {
      return graphQLMap["humidity"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: Int? {
    get {
      return graphQLMap["weight"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }
}

public struct DeleteCurrentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelRecordFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, date: ModelStringInput? = nil, planterId: ModelIDInput? = nil, temperature: ModelFloatInput? = nil, humidity: ModelFloatInput? = nil, weight: ModelFloatInput? = nil, and: [ModelRecordFilterInput?]? = nil, or: [ModelRecordFilterInput?]? = nil, not: ModelRecordFilterInput? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: ModelIDInput? {
    get {
      return graphQLMap["planterID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: ModelFloatInput? {
    get {
      return graphQLMap["temperature"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: ModelFloatInput? {
    get {
      return graphQLMap["humidity"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: ModelFloatInput? {
    get {
      return graphQLMap["weight"] as! ModelFloatInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelRecordFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelRecordFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelRecordFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelRecordFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelRecordFilterInput? {
    get {
      return graphQLMap["not"] as! ModelRecordFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelPlanterFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, userId: ModelIDInput? = nil, and: [ModelPlanterFilterInput?]? = nil, or: [ModelPlanterFilterInput?]? = nil, not: ModelPlanterFilterInput? = nil) {
    graphQLMap = ["id": id, "userID": userId, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: ModelIDInput? {
    get {
      return graphQLMap["userID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var and: [ModelPlanterFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelPlanterFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelPlanterFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelPlanterFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelPlanterFilterInput? {
    get {
      return graphQLMap["not"] as! ModelPlanterFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, name: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: ModelStringInput? {
    get {
      return graphQLMap["name"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelCurrentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, date: ModelStringInput? = nil, planterId: ModelIDInput? = nil, temperature: ModelIntInput? = nil, humidity: ModelIntInput? = nil, weight: ModelIntInput? = nil, and: [ModelCurrentFilterInput?]? = nil, or: [ModelCurrentFilterInput?]? = nil, not: ModelCurrentFilterInput? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: ModelStringInput? {
    get {
      return graphQLMap["date"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: ModelIDInput? {
    get {
      return graphQLMap["planterID"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: ModelIntInput? {
    get {
      return graphQLMap["temperature"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: ModelIntInput? {
    get {
      return graphQLMap["humidity"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: ModelIntInput? {
    get {
      return graphQLMap["weight"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [ModelCurrentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelCurrentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelCurrentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelCurrentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelCurrentFilterInput? {
    get {
      return graphQLMap["not"] as! ModelCurrentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct SearchableRecordFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: SearchableIDFilterInput? = nil, date: SearchableStringFilterInput? = nil, planterId: SearchableIDFilterInput? = nil, temperature: SearchableFloatFilterInput? = nil, humidity: SearchableFloatFilterInput? = nil, weight: SearchableFloatFilterInput? = nil, and: [SearchableRecordFilterInput?]? = nil, or: [SearchableRecordFilterInput?]? = nil, not: SearchableRecordFilterInput? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var id: SearchableIDFilterInput? {
    get {
      return graphQLMap["id"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: SearchableStringFilterInput? {
    get {
      return graphQLMap["date"] as! SearchableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: SearchableIDFilterInput? {
    get {
      return graphQLMap["planterID"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: SearchableFloatFilterInput? {
    get {
      return graphQLMap["temperature"] as! SearchableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: SearchableFloatFilterInput? {
    get {
      return graphQLMap["humidity"] as! SearchableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: SearchableFloatFilterInput? {
    get {
      return graphQLMap["weight"] as! SearchableFloatFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [SearchableRecordFilterInput?]? {
    get {
      return graphQLMap["and"] as! [SearchableRecordFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [SearchableRecordFilterInput?]? {
    get {
      return graphQLMap["or"] as! [SearchableRecordFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: SearchableRecordFilterInput? {
    get {
      return graphQLMap["not"] as! SearchableRecordFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct SearchableIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, gt: GraphQLID? = nil, lt: GraphQLID? = nil, gte: GraphQLID? = nil, lte: GraphQLID? = nil, eq: GraphQLID? = nil, match: GraphQLID? = nil, matchPhrase: GraphQLID? = nil, matchPhrasePrefix: GraphQLID? = nil, multiMatch: GraphQLID? = nil, exists: Bool? = nil, wildcard: GraphQLID? = nil, regexp: GraphQLID? = nil, range: [GraphQLID?]? = nil) {
    graphQLMap = ["ne": ne, "gt": gt, "lt": lt, "gte": gte, "lte": lte, "eq": eq, "match": match, "matchPhrase": matchPhrase, "matchPhrasePrefix": matchPhrasePrefix, "multiMatch": multiMatch, "exists": exists, "wildcard": wildcard, "regexp": regexp, "range": range]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var gte: GraphQLID? {
    get {
      return graphQLMap["gte"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gte")
    }
  }

  public var lte: GraphQLID? {
    get {
      return graphQLMap["lte"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lte")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var match: GraphQLID? {
    get {
      return graphQLMap["match"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "match")
    }
  }

  public var matchPhrase: GraphQLID? {
    get {
      return graphQLMap["matchPhrase"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "matchPhrase")
    }
  }

  public var matchPhrasePrefix: GraphQLID? {
    get {
      return graphQLMap["matchPhrasePrefix"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "matchPhrasePrefix")
    }
  }

  public var multiMatch: GraphQLID? {
    get {
      return graphQLMap["multiMatch"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "multiMatch")
    }
  }

  public var exists: Bool? {
    get {
      return graphQLMap["exists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "exists")
    }
  }

  public var wildcard: GraphQLID? {
    get {
      return graphQLMap["wildcard"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "wildcard")
    }
  }

  public var regexp: GraphQLID? {
    get {
      return graphQLMap["regexp"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "regexp")
    }
  }

  public var range: [GraphQLID?]? {
    get {
      return graphQLMap["range"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "range")
    }
  }
}

public struct SearchableStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, gt: String? = nil, lt: String? = nil, gte: String? = nil, lte: String? = nil, eq: String? = nil, match: String? = nil, matchPhrase: String? = nil, matchPhrasePrefix: String? = nil, multiMatch: String? = nil, exists: Bool? = nil, wildcard: String? = nil, regexp: String? = nil, range: [String?]? = nil) {
    graphQLMap = ["ne": ne, "gt": gt, "lt": lt, "gte": gte, "lte": lte, "eq": eq, "match": match, "matchPhrase": matchPhrase, "matchPhrasePrefix": matchPhrasePrefix, "multiMatch": multiMatch, "exists": exists, "wildcard": wildcard, "regexp": regexp, "range": range]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var gte: String? {
    get {
      return graphQLMap["gte"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gte")
    }
  }

  public var lte: String? {
    get {
      return graphQLMap["lte"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lte")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var match: String? {
    get {
      return graphQLMap["match"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "match")
    }
  }

  public var matchPhrase: String? {
    get {
      return graphQLMap["matchPhrase"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "matchPhrase")
    }
  }

  public var matchPhrasePrefix: String? {
    get {
      return graphQLMap["matchPhrasePrefix"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "matchPhrasePrefix")
    }
  }

  public var multiMatch: String? {
    get {
      return graphQLMap["multiMatch"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "multiMatch")
    }
  }

  public var exists: Bool? {
    get {
      return graphQLMap["exists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "exists")
    }
  }

  public var wildcard: String? {
    get {
      return graphQLMap["wildcard"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "wildcard")
    }
  }

  public var regexp: String? {
    get {
      return graphQLMap["regexp"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "regexp")
    }
  }

  public var range: [String?]? {
    get {
      return graphQLMap["range"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "range")
    }
  }
}

public struct SearchableFloatFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Double? = nil, gt: Double? = nil, lt: Double? = nil, gte: Double? = nil, lte: Double? = nil, eq: Double? = nil, range: [Double?]? = nil) {
    graphQLMap = ["ne": ne, "gt": gt, "lt": lt, "gte": gte, "lte": lte, "eq": eq, "range": range]
  }

  public var ne: Double? {
    get {
      return graphQLMap["ne"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var gt: Double? {
    get {
      return graphQLMap["gt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var lt: Double? {
    get {
      return graphQLMap["lt"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var gte: Double? {
    get {
      return graphQLMap["gte"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gte")
    }
  }

  public var lte: Double? {
    get {
      return graphQLMap["lte"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lte")
    }
  }

  public var eq: Double? {
    get {
      return graphQLMap["eq"] as! Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var range: [Double?]? {
    get {
      return graphQLMap["range"] as! [Double?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "range")
    }
  }
}

public struct SearchableRecordSortInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(field: SearchableRecordSortableFields? = nil, direction: SearchableSortDirection? = nil) {
    graphQLMap = ["field": field, "direction": direction]
  }

  public var field: SearchableRecordSortableFields? {
    get {
      return graphQLMap["field"] as! SearchableRecordSortableFields?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "field")
    }
  }

  public var direction: SearchableSortDirection? {
    get {
      return graphQLMap["direction"] as! SearchableSortDirection?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "direction")
    }
  }
}

public enum SearchableRecordSortableFields: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case id
  case date
  case planterId
  case temperature
  case humidity
  case weight
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "id": self = .id
      case "date": self = .date
      case "planterID": self = .planterId
      case "temperature": self = .temperature
      case "humidity": self = .humidity
      case "weight": self = .weight
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "id"
      case .date: return "date"
      case .planterId: return "planterID"
      case .temperature: return "temperature"
      case .humidity: return "humidity"
      case .weight: return "weight"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: SearchableRecordSortableFields, rhs: SearchableRecordSortableFields) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.date, .date): return true
      case (.planterId, .planterId): return true
      case (.temperature, .temperature): return true
      case (.humidity, .humidity): return true
      case (.weight, .weight): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public enum SearchableSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "asc": self = .asc
      case "desc": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "asc"
      case .desc: return "desc"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: SearchableSortDirection, rhs: SearchableSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct SearchablePlanterFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: SearchableIDFilterInput? = nil, userId: SearchableIDFilterInput? = nil, and: [SearchablePlanterFilterInput?]? = nil, or: [SearchablePlanterFilterInput?]? = nil, not: SearchablePlanterFilterInput? = nil) {
    graphQLMap = ["id": id, "userID": userId, "and": and, "or": or, "not": not]
  }

  public var id: SearchableIDFilterInput? {
    get {
      return graphQLMap["id"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userId: SearchableIDFilterInput? {
    get {
      return graphQLMap["userID"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var and: [SearchablePlanterFilterInput?]? {
    get {
      return graphQLMap["and"] as! [SearchablePlanterFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [SearchablePlanterFilterInput?]? {
    get {
      return graphQLMap["or"] as! [SearchablePlanterFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: SearchablePlanterFilterInput? {
    get {
      return graphQLMap["not"] as! SearchablePlanterFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct SearchablePlanterSortInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(field: SearchablePlanterSortableFields? = nil, direction: SearchableSortDirection? = nil) {
    graphQLMap = ["field": field, "direction": direction]
  }

  public var field: SearchablePlanterSortableFields? {
    get {
      return graphQLMap["field"] as! SearchablePlanterSortableFields?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "field")
    }
  }

  public var direction: SearchableSortDirection? {
    get {
      return graphQLMap["direction"] as! SearchableSortDirection?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "direction")
    }
  }
}

public enum SearchablePlanterSortableFields: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case id
  case userId
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "id": self = .id
      case "userID": self = .userId
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "id"
      case .userId: return "userID"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: SearchablePlanterSortableFields, rhs: SearchablePlanterSortableFields) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.userId, .userId): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct SearchableUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: SearchableIDFilterInput? = nil, name: SearchableStringFilterInput? = nil, and: [SearchableUserFilterInput?]? = nil, or: [SearchableUserFilterInput?]? = nil, not: SearchableUserFilterInput? = nil) {
    graphQLMap = ["id": id, "name": name, "and": and, "or": or, "not": not]
  }

  public var id: SearchableIDFilterInput? {
    get {
      return graphQLMap["id"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: SearchableStringFilterInput? {
    get {
      return graphQLMap["name"] as! SearchableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var and: [SearchableUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [SearchableUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [SearchableUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [SearchableUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: SearchableUserFilterInput? {
    get {
      return graphQLMap["not"] as! SearchableUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct SearchableUserSortInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(field: SearchableUserSortableFields? = nil, direction: SearchableSortDirection? = nil) {
    graphQLMap = ["field": field, "direction": direction]
  }

  public var field: SearchableUserSortableFields? {
    get {
      return graphQLMap["field"] as! SearchableUserSortableFields?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "field")
    }
  }

  public var direction: SearchableSortDirection? {
    get {
      return graphQLMap["direction"] as! SearchableSortDirection?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "direction")
    }
  }
}

public enum SearchableUserSortableFields: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case id
  case name
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "id": self = .id
      case "name": self = .name
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "id"
      case .name: return "name"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: SearchableUserSortableFields, rhs: SearchableUserSortableFields) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.name, .name): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct SearchableCurrentFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: SearchableIDFilterInput? = nil, date: SearchableStringFilterInput? = nil, planterId: SearchableIDFilterInput? = nil, temperature: SearchableIntFilterInput? = nil, humidity: SearchableIntFilterInput? = nil, weight: SearchableIntFilterInput? = nil, and: [SearchableCurrentFilterInput?]? = nil, or: [SearchableCurrentFilterInput?]? = nil, not: SearchableCurrentFilterInput? = nil) {
    graphQLMap = ["id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "and": and, "or": or, "not": not]
  }

  public var id: SearchableIDFilterInput? {
    get {
      return graphQLMap["id"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: SearchableStringFilterInput? {
    get {
      return graphQLMap["date"] as! SearchableStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var planterId: SearchableIDFilterInput? {
    get {
      return graphQLMap["planterID"] as! SearchableIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "planterID")
    }
  }

  public var temperature: SearchableIntFilterInput? {
    get {
      return graphQLMap["temperature"] as! SearchableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var humidity: SearchableIntFilterInput? {
    get {
      return graphQLMap["humidity"] as! SearchableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "humidity")
    }
  }

  public var weight: SearchableIntFilterInput? {
    get {
      return graphQLMap["weight"] as! SearchableIntFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var and: [SearchableCurrentFilterInput?]? {
    get {
      return graphQLMap["and"] as! [SearchableCurrentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [SearchableCurrentFilterInput?]? {
    get {
      return graphQLMap["or"] as! [SearchableCurrentFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: SearchableCurrentFilterInput? {
    get {
      return graphQLMap["not"] as! SearchableCurrentFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct SearchableIntFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, gt: Int? = nil, lt: Int? = nil, gte: Int? = nil, lte: Int? = nil, eq: Int? = nil, range: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "gt": gt, "lt": lt, "gte": gte, "lte": lte, "eq": eq, "range": range]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var gte: Int? {
    get {
      return graphQLMap["gte"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gte")
    }
  }

  public var lte: Int? {
    get {
      return graphQLMap["lte"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lte")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var range: [Int?]? {
    get {
      return graphQLMap["range"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "range")
    }
  }
}

public struct SearchableCurrentSortInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(field: SearchableCurrentSortableFields? = nil, direction: SearchableSortDirection? = nil) {
    graphQLMap = ["field": field, "direction": direction]
  }

  public var field: SearchableCurrentSortableFields? {
    get {
      return graphQLMap["field"] as! SearchableCurrentSortableFields?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "field")
    }
  }

  public var direction: SearchableSortDirection? {
    get {
      return graphQLMap["direction"] as! SearchableSortDirection?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "direction")
    }
  }
}

public enum SearchableCurrentSortableFields: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case id
  case date
  case planterId
  case temperature
  case humidity
  case weight
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "id": self = .id
      case "date": self = .date
      case "planterID": self = .planterId
      case "temperature": self = .temperature
      case "humidity": self = .humidity
      case "weight": self = .weight
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .id: return "id"
      case .date: return "date"
      case .planterId: return "planterID"
      case .temperature: return "temperature"
      case .humidity: return "humidity"
      case .weight: return "weight"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: SearchableCurrentSortableFields, rhs: SearchableCurrentSortableFields) -> Bool {
    switch (lhs, rhs) {
      case (.id, .id): return true
      case (.date, .date): return true
      case (.planterId, .planterId): return true
      case (.temperature, .temperature): return true
      case (.humidity, .humidity): return true
      case (.weight, .weight): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public final class CreateRecordMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateRecord($input: CreateRecordInput!, $condition: ModelRecordConditionInput) {\n  createRecord(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateRecordInput
  public var condition: ModelRecordConditionInput?

  public init(input: CreateRecordInput, condition: ModelRecordConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createRecord", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createRecord: CreateRecord? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createRecord": createRecord.flatMap { $0.snapshot }])
    }

    public var createRecord: CreateRecord? {
      get {
        return (snapshot["createRecord"] as? Snapshot).flatMap { CreateRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createRecord")
      }
    }

    public struct CreateRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class UpdateRecordMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateRecord($input: UpdateRecordInput!, $condition: ModelRecordConditionInput) {\n  updateRecord(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateRecordInput
  public var condition: ModelRecordConditionInput?

  public init(input: UpdateRecordInput, condition: ModelRecordConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateRecord", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateRecord: UpdateRecord? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateRecord": updateRecord.flatMap { $0.snapshot }])
    }

    public var updateRecord: UpdateRecord? {
      get {
        return (snapshot["updateRecord"] as? Snapshot).flatMap { UpdateRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateRecord")
      }
    }

    public struct UpdateRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class DeleteRecordMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteRecord($input: DeleteRecordInput!, $condition: ModelRecordConditionInput) {\n  deleteRecord(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteRecordInput
  public var condition: ModelRecordConditionInput?

  public init(input: DeleteRecordInput, condition: ModelRecordConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteRecord", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteRecord: DeleteRecord? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteRecord": deleteRecord.flatMap { $0.snapshot }])
    }

    public var deleteRecord: DeleteRecord? {
      get {
        return (snapshot["deleteRecord"] as? Snapshot).flatMap { DeleteRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteRecord")
      }
    }

    public struct DeleteRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class CreatePlanterMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePlanter($input: CreatePlanterInput!, $condition: ModelPlanterConditionInput) {\n  createPlanter(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreatePlanterInput
  public var condition: ModelPlanterConditionInput?

  public init(input: CreatePlanterInput, condition: ModelPlanterConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPlanter", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreatePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPlanter: CreatePlanter? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPlanter": createPlanter.flatMap { $0.snapshot }])
    }

    public var createPlanter: CreatePlanter? {
      get {
        return (snapshot["createPlanter"] as? Snapshot).flatMap { CreatePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPlanter")
      }
    }

    public struct CreatePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class UpdatePlanterMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePlanter($input: UpdatePlanterInput!, $condition: ModelPlanterConditionInput) {\n  updatePlanter(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdatePlanterInput
  public var condition: ModelPlanterConditionInput?

  public init(input: UpdatePlanterInput, condition: ModelPlanterConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePlanter", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdatePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePlanter: UpdatePlanter? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePlanter": updatePlanter.flatMap { $0.snapshot }])
    }

    public var updatePlanter: UpdatePlanter? {
      get {
        return (snapshot["updatePlanter"] as? Snapshot).flatMap { UpdatePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePlanter")
      }
    }

    public struct UpdatePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class DeletePlanterMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePlanter($input: DeletePlanterInput!, $condition: ModelPlanterConditionInput) {\n  deletePlanter(input: $input, condition: $condition) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeletePlanterInput
  public var condition: ModelPlanterConditionInput?

  public init(input: DeletePlanterInput, condition: ModelPlanterConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePlanter", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeletePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePlanter: DeletePlanter? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePlanter": deletePlanter.flatMap { $0.snapshot }])
    }

    public var deletePlanter: DeletePlanter? {
      get {
        return (snapshot["deletePlanter"] as? Snapshot).flatMap { DeletePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePlanter")
      }
    }

    public struct DeletePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CreateCurrentMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateCurrent($input: CreateCurrentInput!, $condition: ModelCurrentConditionInput) {\n  createCurrent(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateCurrentInput
  public var condition: ModelCurrentConditionInput?

  public init(input: CreateCurrentInput, condition: ModelCurrentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createCurrent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createCurrent: CreateCurrent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createCurrent": createCurrent.flatMap { $0.snapshot }])
    }

    public var createCurrent: CreateCurrent? {
      get {
        return (snapshot["createCurrent"] as? Snapshot).flatMap { CreateCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createCurrent")
      }
    }

    public struct CreateCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateCurrentMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateCurrent($input: UpdateCurrentInput!, $condition: ModelCurrentConditionInput) {\n  updateCurrent(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateCurrentInput
  public var condition: ModelCurrentConditionInput?

  public init(input: UpdateCurrentInput, condition: ModelCurrentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateCurrent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateCurrent: UpdateCurrent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateCurrent": updateCurrent.flatMap { $0.snapshot }])
    }

    public var updateCurrent: UpdateCurrent? {
      get {
        return (snapshot["updateCurrent"] as? Snapshot).flatMap { UpdateCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateCurrent")
      }
    }

    public struct UpdateCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteCurrentMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteCurrent($input: DeleteCurrentInput!, $condition: ModelCurrentConditionInput) {\n  deleteCurrent(input: $input, condition: $condition) {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteCurrentInput
  public var condition: ModelCurrentConditionInput?

  public init(input: DeleteCurrentInput, condition: ModelCurrentConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteCurrent", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteCurrent: DeleteCurrent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteCurrent": deleteCurrent.flatMap { $0.snapshot }])
    }

    public var deleteCurrent: DeleteCurrent? {
      get {
        return (snapshot["deleteCurrent"] as? Snapshot).flatMap { DeleteCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteCurrent")
      }
    }

    public struct DeleteCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetRecordQuery: GraphQLQuery {
  public static let operationString =
    "query GetRecord($id: ID!) {\n  getRecord(id: $id) {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getRecord", arguments: ["id": GraphQLVariable("id")], type: .object(GetRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getRecord: GetRecord? = nil) {
      self.init(snapshot: ["__typename": "Query", "getRecord": getRecord.flatMap { $0.snapshot }])
    }

    public var getRecord: GetRecord? {
      get {
        return (snapshot["getRecord"] as? Snapshot).flatMap { GetRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getRecord")
      }
    }

    public struct GetRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class ListRecordsQuery: GraphQLQuery {
  public static let operationString =
    "query ListRecords($filter: ModelRecordFilterInput, $limit: Int, $nextToken: String) {\n  listRecords(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      date\n      planterID\n      planter {\n        __typename\n        id\n        userID\n        createdAt\n        updatedAt\n      }\n      temperature\n      humidity\n      weight\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelRecordFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelRecordFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listRecords", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listRecords: ListRecord? = nil) {
      self.init(snapshot: ["__typename": "Query", "listRecords": listRecords.flatMap { $0.snapshot }])
    }

    public var listRecords: ListRecord? {
      get {
        return (snapshot["listRecords"] as? Snapshot).flatMap { ListRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listRecords")
      }
    }

    public struct ListRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelRecordConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelRecordConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Record"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("planter", type: .object(Planter.selections)),
          GraphQLField("temperature", type: .scalar(Double.self)),
          GraphQLField("humidity", type: .scalar(Double.self)),
          GraphQLField("weight", type: .scalar(Double.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var planterId: GraphQLID {
          get {
            return snapshot["planterID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "planterID")
          }
        }

        public var planter: Planter? {
          get {
            return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "planter")
          }
        }

        public var temperature: Double? {
          get {
            return snapshot["temperature"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "temperature")
          }
        }

        public var humidity: Double? {
          get {
            return snapshot["humidity"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "humidity")
          }
        }

        public var weight: Double? {
          get {
            return snapshot["weight"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Planter: GraphQLSelectionSet {
          public static let possibleTypes = ["Planter"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: GraphQLID, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userID")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetPlanterQuery: GraphQLQuery {
  public static let operationString =
    "query GetPlanter($id: ID!) {\n  getPlanter(id: $id) {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPlanter", arguments: ["id": GraphQLVariable("id")], type: .object(GetPlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPlanter: GetPlanter? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPlanter": getPlanter.flatMap { $0.snapshot }])
    }

    public var getPlanter: GetPlanter? {
      get {
        return (snapshot["getPlanter"] as? Snapshot).flatMap { GetPlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPlanter")
      }
    }

    public struct GetPlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class ListPlantersQuery: GraphQLQuery {
  public static let operationString =
    "query ListPlanters($filter: ModelPlanterFilterInput, $limit: Int, $nextToken: String) {\n  listPlanters(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelPlanterFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelPlanterFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPlanters", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListPlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listPlanters: ListPlanter? = nil) {
      self.init(snapshot: ["__typename": "Query", "listPlanters": listPlanters.flatMap { $0.snapshot }])
    }

    public var listPlanters: ListPlanter? {
      get {
        return (snapshot["listPlanters"] as? Snapshot).flatMap { ListPlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listPlanters")
      }
    }

    public struct ListPlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelPlanterConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelPlanterConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetCurrentQuery: GraphQLQuery {
  public static let operationString =
    "query GetCurrent($id: ID!) {\n  getCurrent(id: $id) {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getCurrent", arguments: ["id": GraphQLVariable("id")], type: .object(GetCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getCurrent: GetCurrent? = nil) {
      self.init(snapshot: ["__typename": "Query", "getCurrent": getCurrent.flatMap { $0.snapshot }])
    }

    public var getCurrent: GetCurrent? {
      get {
        return (snapshot["getCurrent"] as? Snapshot).flatMap { GetCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getCurrent")
      }
    }

    public struct GetCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListCurrentsQuery: GraphQLQuery {
  public static let operationString =
    "query ListCurrents($filter: ModelCurrentFilterInput, $limit: Int, $nextToken: String) {\n  listCurrents(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      date\n      planterID\n      temperature\n      humidity\n      weight\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelCurrentFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelCurrentFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listCurrents", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listCurrents: ListCurrent? = nil) {
      self.init(snapshot: ["__typename": "Query", "listCurrents": listCurrents.flatMap { $0.snapshot }])
    }

    public var listCurrents: ListCurrent? {
      get {
        return (snapshot["listCurrents"] as? Snapshot).flatMap { ListCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listCurrents")
      }
    }

    public struct ListCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelCurrentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelCurrentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Current"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("temperature", type: .scalar(Int.self)),
          GraphQLField("humidity", type: .scalar(Int.self)),
          GraphQLField("weight", type: .scalar(Int.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var planterId: GraphQLID {
          get {
            return snapshot["planterID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "planterID")
          }
        }

        public var temperature: Int? {
          get {
            return snapshot["temperature"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "temperature")
          }
        }

        public var humidity: Int? {
          get {
            return snapshot["humidity"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "humidity")
          }
        }

        public var weight: Int? {
          get {
            return snapshot["weight"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SearchRecordsQuery: GraphQLQuery {
  public static let operationString =
    "query SearchRecords($filter: SearchableRecordFilterInput, $sort: SearchableRecordSortInput, $limit: Int, $nextToken: String, $from: Int) {\n  searchRecords(filter: $filter, sort: $sort, limit: $limit, nextToken: $nextToken, from: $from) {\n    __typename\n    items {\n      __typename\n      id\n      date\n      planterID\n      planter {\n        __typename\n        id\n        userID\n        createdAt\n        updatedAt\n      }\n      temperature\n      humidity\n      weight\n      createdAt\n      updatedAt\n    }\n    nextToken\n    total\n  }\n}"

  public var filter: SearchableRecordFilterInput?
  public var sort: SearchableRecordSortInput?
  public var limit: Int?
  public var nextToken: String?
  public var from: Int?

  public init(filter: SearchableRecordFilterInput? = nil, sort: SearchableRecordSortInput? = nil, limit: Int? = nil, nextToken: String? = nil, from: Int? = nil) {
    self.filter = filter
    self.sort = sort
    self.limit = limit
    self.nextToken = nextToken
    self.from = from
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "sort": sort, "limit": limit, "nextToken": nextToken, "from": from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchRecords", arguments: ["filter": GraphQLVariable("filter"), "sort": GraphQLVariable("sort"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "from": GraphQLVariable("from")], type: .object(SearchRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchRecords: SearchRecord? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchRecords": searchRecords.flatMap { $0.snapshot }])
    }

    public var searchRecords: SearchRecord? {
      get {
        return (snapshot["searchRecords"] as? Snapshot).flatMap { SearchRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchRecords")
      }
    }

    public struct SearchRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["SearchableRecordConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("total", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, total: Int? = nil) {
        self.init(snapshot: ["__typename": "SearchableRecordConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "total": total])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var total: Int? {
        get {
          return snapshot["total"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "total")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Record"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("planter", type: .object(Planter.selections)),
          GraphQLField("temperature", type: .scalar(Double.self)),
          GraphQLField("humidity", type: .scalar(Double.self)),
          GraphQLField("weight", type: .scalar(Double.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var planterId: GraphQLID {
          get {
            return snapshot["planterID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "planterID")
          }
        }

        public var planter: Planter? {
          get {
            return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "planter")
          }
        }

        public var temperature: Double? {
          get {
            return snapshot["temperature"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "temperature")
          }
        }

        public var humidity: Double? {
          get {
            return snapshot["humidity"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "humidity")
          }
        }

        public var weight: Double? {
          get {
            return snapshot["weight"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Planter: GraphQLSelectionSet {
          public static let possibleTypes = ["Planter"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, userId: GraphQLID, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var userId: GraphQLID {
            get {
              return snapshot["userID"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userID")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class SearchPlantersQuery: GraphQLQuery {
  public static let operationString =
    "query SearchPlanters($filter: SearchablePlanterFilterInput, $sort: SearchablePlanterSortInput, $limit: Int, $nextToken: String, $from: Int) {\n  searchPlanters(filter: $filter, sort: $sort, limit: $limit, nextToken: $nextToken, from: $from) {\n    __typename\n    items {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    nextToken\n    total\n  }\n}"

  public var filter: SearchablePlanterFilterInput?
  public var sort: SearchablePlanterSortInput?
  public var limit: Int?
  public var nextToken: String?
  public var from: Int?

  public init(filter: SearchablePlanterFilterInput? = nil, sort: SearchablePlanterSortInput? = nil, limit: Int? = nil, nextToken: String? = nil, from: Int? = nil) {
    self.filter = filter
    self.sort = sort
    self.limit = limit
    self.nextToken = nextToken
    self.from = from
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "sort": sort, "limit": limit, "nextToken": nextToken, "from": from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchPlanters", arguments: ["filter": GraphQLVariable("filter"), "sort": GraphQLVariable("sort"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "from": GraphQLVariable("from")], type: .object(SearchPlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchPlanters: SearchPlanter? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchPlanters": searchPlanters.flatMap { $0.snapshot }])
    }

    public var searchPlanters: SearchPlanter? {
      get {
        return (snapshot["searchPlanters"] as? Snapshot).flatMap { SearchPlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchPlanters")
      }
    }

    public struct SearchPlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["SearchablePlanterConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("total", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, total: Int? = nil) {
        self.init(snapshot: ["__typename": "SearchablePlanterConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "total": total])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var total: Int? {
        get {
          return snapshot["total"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "total")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class SearchUsersQuery: GraphQLQuery {
  public static let operationString =
    "query SearchUsers($filter: SearchableUserFilterInput, $sort: SearchableUserSortInput, $limit: Int, $nextToken: String, $from: Int) {\n  searchUsers(filter: $filter, sort: $sort, limit: $limit, nextToken: $nextToken, from: $from) {\n    __typename\n    items {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    nextToken\n    total\n  }\n}"

  public var filter: SearchableUserFilterInput?
  public var sort: SearchableUserSortInput?
  public var limit: Int?
  public var nextToken: String?
  public var from: Int?

  public init(filter: SearchableUserFilterInput? = nil, sort: SearchableUserSortInput? = nil, limit: Int? = nil, nextToken: String? = nil, from: Int? = nil) {
    self.filter = filter
    self.sort = sort
    self.limit = limit
    self.nextToken = nextToken
    self.from = from
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "sort": sort, "limit": limit, "nextToken": nextToken, "from": from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchUsers", arguments: ["filter": GraphQLVariable("filter"), "sort": GraphQLVariable("sort"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "from": GraphQLVariable("from")], type: .object(SearchUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchUsers: SearchUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchUsers": searchUsers.flatMap { $0.snapshot }])
    }

    public var searchUsers: SearchUser? {
      get {
        return (snapshot["searchUsers"] as? Snapshot).flatMap { SearchUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchUsers")
      }
    }

    public struct SearchUser: GraphQLSelectionSet {
      public static let possibleTypes = ["SearchableUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("total", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, total: Int? = nil) {
        self.init(snapshot: ["__typename": "SearchableUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "total": total])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var total: Int? {
        get {
          return snapshot["total"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "total")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class SearchCurrentsQuery: GraphQLQuery {
  public static let operationString =
    "query SearchCurrents($filter: SearchableCurrentFilterInput, $sort: SearchableCurrentSortInput, $limit: Int, $nextToken: String, $from: Int) {\n  searchCurrents(filter: $filter, sort: $sort, limit: $limit, nextToken: $nextToken, from: $from) {\n    __typename\n    items {\n      __typename\n      id\n      date\n      planterID\n      temperature\n      humidity\n      weight\n      createdAt\n      updatedAt\n    }\n    nextToken\n    total\n  }\n}"

  public var filter: SearchableCurrentFilterInput?
  public var sort: SearchableCurrentSortInput?
  public var limit: Int?
  public var nextToken: String?
  public var from: Int?

  public init(filter: SearchableCurrentFilterInput? = nil, sort: SearchableCurrentSortInput? = nil, limit: Int? = nil, nextToken: String? = nil, from: Int? = nil) {
    self.filter = filter
    self.sort = sort
    self.limit = limit
    self.nextToken = nextToken
    self.from = from
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "sort": sort, "limit": limit, "nextToken": nextToken, "from": from]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchCurrents", arguments: ["filter": GraphQLVariable("filter"), "sort": GraphQLVariable("sort"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken"), "from": GraphQLVariable("from")], type: .object(SearchCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchCurrents: SearchCurrent? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchCurrents": searchCurrents.flatMap { $0.snapshot }])
    }

    public var searchCurrents: SearchCurrent? {
      get {
        return (snapshot["searchCurrents"] as? Snapshot).flatMap { SearchCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchCurrents")
      }
    }

    public struct SearchCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["SearchableCurrentConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("total", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil, total: Int? = nil) {
        self.init(snapshot: ["__typename": "SearchableCurrentConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken, "total": total])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var total: Int? {
        get {
          return snapshot["total"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "total")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Current"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("temperature", type: .scalar(Int.self)),
          GraphQLField("humidity", type: .scalar(Int.self)),
          GraphQLField("weight", type: .scalar(Int.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String? {
          get {
            return snapshot["date"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var planterId: GraphQLID {
          get {
            return snapshot["planterID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "planterID")
          }
        }

        public var temperature: Int? {
          get {
            return snapshot["temperature"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "temperature")
          }
        }

        public var humidity: Int? {
          get {
            return snapshot["humidity"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "humidity")
          }
        }

        public var weight: Int? {
          get {
            return snapshot["weight"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "weight")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateRecordSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateRecord {\n  onCreateRecord {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateRecord", type: .object(OnCreateRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateRecord: OnCreateRecord? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateRecord": onCreateRecord.flatMap { $0.snapshot }])
    }

    public var onCreateRecord: OnCreateRecord? {
      get {
        return (snapshot["onCreateRecord"] as? Snapshot).flatMap { OnCreateRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateRecord")
      }
    }

    public struct OnCreateRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateRecordSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateRecord {\n  onUpdateRecord {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateRecord", type: .object(OnUpdateRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateRecord: OnUpdateRecord? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateRecord": onUpdateRecord.flatMap { $0.snapshot }])
    }

    public var onUpdateRecord: OnUpdateRecord? {
      get {
        return (snapshot["onUpdateRecord"] as? Snapshot).flatMap { OnUpdateRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateRecord")
      }
    }

    public struct OnUpdateRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteRecordSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteRecord {\n  onDeleteRecord {\n    __typename\n    id\n    date\n    planterID\n    planter {\n      __typename\n      id\n      userID\n      user {\n        __typename\n        id\n        name\n        createdAt\n        updatedAt\n      }\n      createdAt\n      updatedAt\n    }\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteRecord", type: .object(OnDeleteRecord.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteRecord: OnDeleteRecord? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteRecord": onDeleteRecord.flatMap { $0.snapshot }])
    }

    public var onDeleteRecord: OnDeleteRecord? {
      get {
        return (snapshot["onDeleteRecord"] as? Snapshot).flatMap { OnDeleteRecord(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteRecord")
      }
    }

    public struct OnDeleteRecord: GraphQLSelectionSet {
      public static let possibleTypes = ["Record"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("planter", type: .object(Planter.selections)),
        GraphQLField("temperature", type: .scalar(Double.self)),
        GraphQLField("humidity", type: .scalar(Double.self)),
        GraphQLField("weight", type: .scalar(Double.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, planter: Planter? = nil, temperature: Double? = nil, humidity: Double? = nil, weight: Double? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Record", "id": id, "date": date, "planterID": planterId, "planter": planter.flatMap { $0.snapshot }, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var planter: Planter? {
        get {
          return (snapshot["planter"] as? Snapshot).flatMap { Planter(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "planter")
        }
      }

      public var temperature: Double? {
        get {
          return snapshot["temperature"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Double? {
        get {
          return snapshot["humidity"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Double? {
        get {
          return snapshot["weight"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Planter: GraphQLSelectionSet {
        public static let possibleTypes = ["Planter"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var userId: GraphQLID {
          get {
            return snapshot["userID"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userID")
          }
        }

        public var user: User? {
          get {
            return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "user")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var createdAt: String {
            get {
              return snapshot["createdAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return snapshot["updatedAt"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }
      }
    }
  }
}

public final class OnCreatePlanterSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreatePlanter {\n  onCreatePlanter {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreatePlanter", type: .object(OnCreatePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreatePlanter: OnCreatePlanter? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreatePlanter": onCreatePlanter.flatMap { $0.snapshot }])
    }

    public var onCreatePlanter: OnCreatePlanter? {
      get {
        return (snapshot["onCreatePlanter"] as? Snapshot).flatMap { OnCreatePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreatePlanter")
      }
    }

    public struct OnCreatePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnUpdatePlanterSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdatePlanter {\n  onUpdatePlanter {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdatePlanter", type: .object(OnUpdatePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdatePlanter: OnUpdatePlanter? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdatePlanter": onUpdatePlanter.flatMap { $0.snapshot }])
    }

    public var onUpdatePlanter: OnUpdatePlanter? {
      get {
        return (snapshot["onUpdatePlanter"] as? Snapshot).flatMap { OnUpdatePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdatePlanter")
      }
    }

    public struct OnUpdatePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnDeletePlanterSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeletePlanter {\n  onDeletePlanter {\n    __typename\n    id\n    userID\n    user {\n      __typename\n      id\n      name\n      createdAt\n      updatedAt\n    }\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeletePlanter", type: .object(OnDeletePlanter.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeletePlanter: OnDeletePlanter? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeletePlanter": onDeletePlanter.flatMap { $0.snapshot }])
    }

    public var onDeletePlanter: OnDeletePlanter? {
      get {
        return (snapshot["onDeletePlanter"] as? Snapshot).flatMap { OnDeletePlanter(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeletePlanter")
      }
    }

    public struct OnDeletePlanter: GraphQLSelectionSet {
      public static let possibleTypes = ["Planter"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("user", type: .object(User.selections)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, userId: GraphQLID, user: User? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Planter", "id": id, "userID": userId, "user": user.flatMap { $0.snapshot }, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var userId: GraphQLID {
        get {
          return snapshot["userID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userID")
        }
      }

      public var user: User? {
        get {
          return (snapshot["user"] as? Snapshot).flatMap { User(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "user")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser {\n  onCreateUser {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser {\n  onUpdateUser {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser {\n  onDeleteUser {\n    __typename\n    id\n    name\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "User", "id": id, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnCreateCurrentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateCurrent {\n  onCreateCurrent {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateCurrent", type: .object(OnCreateCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateCurrent: OnCreateCurrent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateCurrent": onCreateCurrent.flatMap { $0.snapshot }])
    }

    public var onCreateCurrent: OnCreateCurrent? {
      get {
        return (snapshot["onCreateCurrent"] as? Snapshot).flatMap { OnCreateCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateCurrent")
      }
    }

    public struct OnCreateCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateCurrentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateCurrent {\n  onUpdateCurrent {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateCurrent", type: .object(OnUpdateCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateCurrent: OnUpdateCurrent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateCurrent": onUpdateCurrent.flatMap { $0.snapshot }])
    }

    public var onUpdateCurrent: OnUpdateCurrent? {
      get {
        return (snapshot["onUpdateCurrent"] as? Snapshot).flatMap { OnUpdateCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateCurrent")
      }
    }

    public struct OnUpdateCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteCurrentSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteCurrent {\n  onDeleteCurrent {\n    __typename\n    id\n    date\n    planterID\n    temperature\n    humidity\n    weight\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteCurrent", type: .object(OnDeleteCurrent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteCurrent: OnDeleteCurrent? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteCurrent": onDeleteCurrent.flatMap { $0.snapshot }])
    }

    public var onDeleteCurrent: OnDeleteCurrent? {
      get {
        return (snapshot["onDeleteCurrent"] as? Snapshot).flatMap { OnDeleteCurrent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteCurrent")
      }
    }

    public struct OnDeleteCurrent: GraphQLSelectionSet {
      public static let possibleTypes = ["Current"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("date", type: .scalar(String.self)),
        GraphQLField("planterID", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("humidity", type: .scalar(Int.self)),
        GraphQLField("weight", type: .scalar(Int.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, date: String? = nil, planterId: GraphQLID, temperature: Int? = nil, humidity: Int? = nil, weight: Int? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "Current", "id": id, "date": date, "planterID": planterId, "temperature": temperature, "humidity": humidity, "weight": weight, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var date: String? {
        get {
          return snapshot["date"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "date")
        }
      }

      public var planterId: GraphQLID {
        get {
          return snapshot["planterID"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "planterID")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var humidity: Int? {
        get {
          return snapshot["humidity"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "humidity")
        }
      }

      public var weight: Int? {
        get {
          return snapshot["weight"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "weight")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}