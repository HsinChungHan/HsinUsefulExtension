//
//  String_Extension.swift
//  BelizeBus
//
//  Created by 辛忠翰 on 2018/7/28.
//  Copyright © 2018 辛忠翰. All rights reserved.
//

import Foundation
public extension String{
    public func fetchSuffix(fromChar: Character) -> String?{
        guard let index = self.index(of: fromChar) else {return nil}
        var subStr = self.suffix(from: index)
        subStr.remove(at: index)
        let str = String(subStr)
        return str
    }
    
    public func fetchPrefix(fromChar: Character) -> String?{
        guard let index = self.index(of: fromChar) else {return nil}
        let subStr = self.prefix(upTo: index)
        let str = String(subStr)
        return str
    }
    
    
}
