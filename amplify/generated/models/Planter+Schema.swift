// swiftlint:disable all
import Amplify
import Foundation

extension Planter {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case userID
    case user
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let planter = Planter.keys
    
    model.pluralName = "Planters"
    
    model.fields(
      .id(),
      .field(planter.name, is: .required, ofType: .string),
      .field(planter.userID, is: .required, ofType: .string),
      .hasOne(planter.user, is: .optional, ofType: User.self, associatedWith: User.keys.id, targetName: "userID")
    )
    }
}