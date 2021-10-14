// swiftlint:disable all
import Amplify
import Foundation

public struct Planter: Model {
  public let id: String
  public var name: String
  public var userID: String
  public var user: User?
  
  public init(id: String = UUID().uuidString,
      name: String,
      userID: String,
      user: User? = nil) {
      self.id = id
      self.name = name
      self.userID = userID
      self.user = user
  }
}