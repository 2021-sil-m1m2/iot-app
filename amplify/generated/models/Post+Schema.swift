// swiftlint:disable all
import Amplify
import Foundation

extension Post {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case user
    case title
    case tags
    case content
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let post = Post.keys
    
    model.pluralName = "Posts"
    
    model.fields(
      .id(),
      .belongsTo(post.user, is: .optional, ofType: User.self, targetName: "userID"),
      .field(post.title, is: .optional, ofType: .string),
      .field(post.tags, is: .optional, ofType: .string),
      .field(post.content, is: .optional, ofType: .string)
    )
    }
}