// swiftlint:disable all
import Amplify
import Foundation

extension Current {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case date
    case planterID
    case temperature
    case humidity
    case weight
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let current = Current.keys
    
    model.pluralName = "Currents"
    
    model.fields(
      .id(),
      .field(current.date, is: .required, ofType: .string),
      .field(current.planterID, is: .required, ofType: .string),
      .field(current.temperature, is: .optional, ofType: .int),
      .field(current.humidity, is: .optional, ofType: .int),
      .field(current.weight, is: .optional, ofType: .int)
    )
    }
}