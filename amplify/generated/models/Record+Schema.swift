// swiftlint:disable all
import Amplify
import Foundation

extension Record {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case date
    case planterID
    case planter
    case temperature
    case humidity
    case weight
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let record = Record.keys
    
    model.pluralName = "Records"
    
    model.fields(
      .id(),
      .field(record.date, is: .optional, ofType: .string),
      .field(record.planterID, is: .required, ofType: .string),
      .hasOne(record.planter, is: .optional, ofType: Planter.self, associatedWith: Planter.keys.id, targetName: "planterID"),
      .field(record.temperature, is: .optional, ofType: .int),
      .field(record.humidity, is: .optional, ofType: .int),
      .field(record.weight, is: .optional, ofType: .int)
    )
    }
}