// swiftlint:disable all
import Amplify
import Foundation

public struct Post: Model {
  public let id: String
  public var user: User?
  public var title: String?
  public var tags: String?
  public var content: String?
  
  public init(id: String = UUID().uuidString,
      user: User? = nil,
      title: String? = nil,
      tags: String? = nil,
      content: String? = nil) {
      self.id = id
      self.user = user
      self.title = title
      self.tags = tags
      self.content = content
  }
}