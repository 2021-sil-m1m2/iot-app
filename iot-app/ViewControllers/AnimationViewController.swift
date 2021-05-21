//
//  AnimationViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/22.
//

import Lottie
import UIKit

class AnimationViewController: UIViewController {
    // AnimationViewの宣言
    var animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // アニメーションの呼び出し
        addAnimationView()
    }
    
    // アニメーションの準備
    func addAnimationView() {

        // アニメーションファイルの指定
        animationView = AnimationView(name: "62607-track-your-progress")

        // アニメーションの位置指定（画面中央）
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)

        // アニメーションのアスペクト比を指定＆ループで開始
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()

        // ViewControllerに配置
        view.addSubview(animationView)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
