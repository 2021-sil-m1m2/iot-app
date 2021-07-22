// swiftlint:disable all
import Amplify
import Foundation

public struct Record: Model {
  public let id: String
  public var date: String
  public var planterID: String
  public var planter: Planter?
  public var temperature: Double?
  public var humidity: Double?
  public var weight: Double?
  
  public init(id: String = UUID().uuidString,
      date: String,
      planterID: String,
      planter: Planter? = nil,
      temperature: Double? = nil,
      humidity: Double? = nil,
      weight: Double? = nil) {
      self.id = id
      self.date = date
      self.planterID = planterID
      self.planter = planter
      self.temperature = temperature
      self.humidity = humidity
      self.weight = weight
  }
}