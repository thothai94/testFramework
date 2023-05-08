//
//  CustomLog.swift
//  testFramework
//
//  Created by Võ Toàn on 08/05/2023.
//

import Foundation

open class CustomLog {
    public init() {}
    
    public func log(_ object: Any...) {
//        #if DEBUG
        for item in object {
            Swift.print(item)
        }
//        #endif
    }
    
    public func log(_ object: Any) {
//        #if DEBUG
        Swift.print(object)
//        #endif
    }
}
