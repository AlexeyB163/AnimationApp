//
//  Animation.swift
//  AnimationApp
//
//  Created by User on 21.02.2022.
//

import Foundation

struct Animation {
    let animation: String
    let curve: String
    var force: Float {
        Float.random(in: 0.5...2.0)
    }
    var duration: Float {
        Float.random(in: 0.5...1.5)
    }
    var delay: Float {
        Float.random(in: 0...1.3)
    }
    
   static func getAnimation() -> [Animation] {
       var animations:[Animation] = []
       
       let animation = DataManager.dataManager.animation.shuffled()
       let curve = DataManager.dataManager.curve.shuffled()
       
       for index in 0..<DataManager.dataManager.animation.count{
           animations.append(
            Animation(animation: animation[index],
                      curve: curve.randomElement() ?? ""))
       }
       return animations
    }
}
