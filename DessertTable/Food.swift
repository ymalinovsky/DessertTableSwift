//
//  Food.swift
//  DessertTable
//
//  Created by Yan Malinovsky on 25.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import Foundation

class Food {
    var imageName: String = String()
    var description: String = String()
    var moreInfo: String = String()
    
    init (imageName: String, description: String, moreInfo: String) {
        self.imageName = imageName
        self.description = description
        self.moreInfo = moreInfo
    }
}
