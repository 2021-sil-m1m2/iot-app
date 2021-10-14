// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "d4be9b14dc2b2461dc2a712ae699ec6f"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Record.self)
    ModelRegistry.register(modelType: Planter.self)
    ModelRegistry.register(modelType: User.self)
    ModelRegistry.register(modelType: Current.self)
  }
}