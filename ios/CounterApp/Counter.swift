//
//  Counter.swift
//  CounterApp
//
//  Created by 黃立洋 on 2022/10/9.
//

import Foundation

@objc(Counter)
class Counter: NSObject {
  
  private var count = 0
  
  @objc
    func increment() {
      count += 1
      print("count is \(count)")
    }
  
  
  @objc
    func constantsToExport() -> [AnyHashable : Any]! {
      return [
        "number": 123.9,
        "string": "foo",
        "boolean": true,
        "array": [1, 22.2, "33"],
        "object": ["a": 1, "b": 2]
      ]
    }
  
  @objc
    static func requiresMainQueueSetup() -> Bool {
      return true
    }
}
