// swiftlint:disable all
import Amplify
import Foundation

public struct Record: Model {
  public let id: String
  public var date: String?
  public var planterID: String
  public var planter: Planter?
  public var temperature: Int?
  public var humidity: Int?
  public var weight: Int?
  
  public init(id: String = UUID().uuidString,
      date: String? = nil,
      planterID: String,
      planter: Planter? = nil,
      temperature: Int? = nil,
      humidity: Int? = nil,
      weight: Int? = nil) {
      self.id = id
      self.date = date
      self.planterID = planterID
      self.planter = planter
      self.temperature = temperature
      self.humidity = humidity
      self.weight = weight
  }
}