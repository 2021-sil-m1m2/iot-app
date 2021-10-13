//
//  Backend.swift
//  iot-app
//
//  Created by yokada on 2021/05/18.
//

import UIKit
import Amplify
import AmplifyPlugins

class Backend {
    static let shared = Backend()
    
    static func initialize() -> Backend {
        return .shared
    }
    
    // アプリケーションの起動が完了したら、Singleton Backendオブジェクトを初期化する
    private init() {
        // initialize amplify
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: AmplifyModels()))
//            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
            print("Initialized Amplify")
            
            
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
        
    }
    
}
