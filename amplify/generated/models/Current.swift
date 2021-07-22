// swiftlint:disable all
import Amplify
import Foundation

public struct Current: Model {
  public let id: String
  public var date: String
  public var planterID: String
  public var temperature: Int?
  public var humidity: Int?
  public var weight: Int?
  
  public init(id: String = UUID().uuidString,
      date: String,
      planterID: String,
      temperature: Int? = nil,
      humidity: Int? = nil,
      weight: Int? = nil) {
      self.id = id
      self.date = date
      self.planterID = planterID
      self.temperature = temperature
      self.humidity = humidity
      self.weight = weight
  }
}