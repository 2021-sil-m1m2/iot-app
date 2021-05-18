// swiftlint:disable all
import Amplify
import Foundation

extension User {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case planterID
    case posts
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let user = User.keys
    
    model.pluralName = "Users"
    
    model.fields(
      .id(),
      .field(user.name, is: .required, ofType: .string),
      .field(user.planterID, is: .required, ofType: .string),
      .hasMany(user.posts, is: .optional, ofType: Post.self, associatedWith: Post.keys.user)
    )
    }
}