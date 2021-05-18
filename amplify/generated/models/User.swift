// swiftlint:disable all
import Amplify
import Foundation

public struct User: Model {
  public let id: String
  public var name: String
  public var planterID: String
  public var posts: List<Post>?
  
  public init(id: String = UUID().uuidString,
      name: String,
      planterID: String,
      posts: List<Post>? = []) {
      self.id = id
      self.name = name
      self.planterID = planterID
      self.posts = posts
  }
}