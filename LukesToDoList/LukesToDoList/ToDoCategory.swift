//
//  ToDoCategory.swift
//  LukesToDoList
//
//  Created by Lucas Lell on 10/24/16.
//  Copyright © 2016 Luuke192. All rights reserved.
//

import UIKit

class ToDoCategory: NSObject, NSCoding {
    var name: String = ""
    
    let nameKey = "name"
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: nameKey) as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: nameKey)
    }
    
    override init() {
        super.init()
    }
    
    init(_ name: String) {
        self.name = name
    }
}
