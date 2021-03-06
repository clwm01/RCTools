//
//  RTPrint.swift
//  RCToolsDemo
//
//  Created by Rex Tsao on 5/27/16.
//  Copyright © 2016 rexcao. All rights reserved.
//

import Foundation

class RTPrint {
    var disable: Bool = false
    
    class func shareInstance() -> RTPrint {
        struct Inner {
            static var predicate: dispatch_once_t = 0
            static var instance: RTPrint?
        }
        dispatch_once(&Inner.predicate, {
            Inner.instance = RTPrint()
        })
        return Inner.instance!
    }
    
    
    /// Print multiple items concatenate with separator and terminate with terminator.
    ///
    /// - parameter items: The items you want to print.
    /// - parameter separator: The separator you used to separate items.
    /// - parameter terminator: The terminator you used to terminate print.
    func prt(items: Any..., separator: String = ", ", terminator: String = "\n") {
        guard !self.disable else {
            return
        }
        let count = items.count
        print(items[0], terminator: "")
        for i in 1 ..< count {
            print(separator, terminator: "")
            print(items[i], terminator: "")
        }
        print(terminator, terminator: "")
    }
}