//
//  DataStorage.swift
//  AnimationApp
//
//  Created by User on 21.02.2022.
//

import Foundation

class DataManager {
    static let dataManager = DataManager()
    
    let animation = ["shake", "pop", "morph", "squeeze", "wobble", "swing",
                     "fall", "squeezeLeft", "slideLeft", "fadeIn"]
    
    let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
    
    private init() {}
    
}
