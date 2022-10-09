//
//  CounterViewManager.swift
//  CounterApp
//
//  Created by 黃立洋 on 2022/10/9.
//

import Foundation


@objc(CounterViewManager)
class CounterViewManager: RCTViewManager {
  override func view() -> UIView! {
//    let label = UILabel()
//    label.text = "Swift Counter"
//    label.textAlignment = .center
//    return label
    return CounterView()
  }
  override static func requiresMainQueueSetup() -> Bool {
      return true
  }
  // 1
  @objc func updateFromManager(_ node: NSNumber, count: NSNumber) {
      
      DispatchQueue.main.async {                                // 2
        let component = self.bridge.uiManager.view(             // 3
          forReactTag: node                                     // 4
        ) as! CounterView                                       // 5
        component.update(value: count)                          // 6
      }
    }
}

