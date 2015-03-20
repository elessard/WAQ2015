//
//  ANIMAL.swift
//  WAQ2015
//
//  Created by Emilie Lessard on 2015-03-19.
//  Copyright (c) 2015 Irrelevant Manatee Corporation. All rights reserved.
//

import Foundation


class Animal {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Monkey: Animal {
    var lovesBananas: Bool!
    
    init(name: String, lovesBananas: Bool) {
        self.lovesBananas = lovesBananas
        super.init(name: name)

    }
    
    convenience override init(name: String) {
        self.init(name: name, lovesBananas: true)
        self.lovesBananas = true
    }
}




