//
//  GlobalFunctions.swift
//  iot-app
//
//  Created by yokada on 2021/05/26.
//

import Foundation
import Lottie

class functions: NSObject{
    
    // アニメーションを描画する関数（loopModeも引数で渡したいかも）
    class func addAnimationView(view: UIView, animation: String, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) {

        // AnimationViewの宣言
        var animationView = AnimationView()
        
        // アニメーションファイルの指定
        animationView = AnimationView(name: animation)

        // アニメーションの位置指定
        animationView.frame = CGRect(x: x, y: y, width: width, height: height)

        // アニメーションのアスペクト比を指定＆ループで開始
        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .loop
        animationView.loopMode = .autoReverse
        animationView.play()

        // ViewControllerに配置
        view.addSubview(animationView)
        
        // aniationViewを最背面に配置
        view.sendSubviewToBack(animationView)
    }
}
