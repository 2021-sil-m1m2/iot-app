// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "c9e9802fe201656ff067110416404798"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Record.self)
    ModelRegistry.register(modelType: Planter.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Current.self)
  }
}