// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "e832cee68d62795904f1f4e79d5d937e"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Record.self)
    ModelRegistry.register(modelType: Planter.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Current.self)
  }
}