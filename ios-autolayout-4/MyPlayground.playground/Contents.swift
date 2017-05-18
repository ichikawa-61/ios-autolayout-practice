//: Playground - noun: a place where people can play

import UIKit


//****************************
//MARK: Live View Configuration
//****************************
// プレイグラウンドにWindowのプレビュー表示
import PlaygroundSupport

// Playgroundでの非同期処理を待つオプション
PlaygroundPage.current.needsIndefiniteExecution = true

let viewController = BeatlesTableViewController()
viewController.title = "I love Beatles."
let navigationController = UINavigationController(rootViewController: vc)
navigationController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
