//
//  act.swift
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class act: NSObject {
    
    
    func hasAct(tag:Int) ->String {
        switch (tag) {
        case 1:return "Movie"
        case 2:return "CCTV"
        case 3:return "Sport Tv"
        default:
            return "Area Tv"
        }
    }
    
    
    override init() {
        println("act constructor is called.")
    }
    
    deinit
    {
        println("act destroyed is called.")
    }
}


//class Ordered {
//    func precedes(other:Ordered) -> Bool {
//        fatalError("implement me!")
//    }
//}
//
//class Number:Ordered {
//    var value:Double = 0
//    override func precedes(other: Ordered) -> Bool {
//        return self.value < (other as!Number).value
//    }
//}
//
//func binarySearch(sortedKeys:[Ordered],forKey k:Ordered) ->Int {
//    var lo = 0;
//    var hi = sortedKeys.count
//    while hi > lo {
//        let mid = lo + (hi - lo) / 2
//        if sortedKeys[mid].precedes(k) {
//            lo = mid + 1
//        } else {
//            hi = mid
//        }
//    }
//    return lo
//}

//protocol Ordered {
//    func precedes(other: Self) -> Bool
//}
//struct Number: Ordered {
//    var value: Double = 0
//    func precedes(other: Number) -> Bool {
//        return self.value < other.value
//    }
//}
//func binarySearch(sortedKeys: [Ordered], forKey k: Ordered) -> Int {
//    var lo = 0
//    var hi = sortedKeys.count
//    while hi > lo {
//        let mid = lo + (hi - lo) / 2
//        if sortedKeys[mid].precedes(k) { lo = mid + 1 }
//        else { hi = mid }
//    }
//    return lo
//}


//protocol Brid {//定义协议
//    var name:String {//两个属性
//        get
//    }
//    
//    var canfly:Bool {
//        get
//    }
//    
//   
//    
//}
//
//extension Brid where Self:Flyable _ =
//    var canFly:Bool {
//        return true
//    }
//
//protocol Flyable {//定义协议
//    var airspeedVelocity:Double { //属性
//        get
//    }
//}
//
//struct FlappyBird:Brid,Flyable {
//    let name:String
//    let flappyAmplitude:Double
//    let flappyfrequency:Double
//    let canfly = true
//    var airspeedVelocity:Double {
//        return 3 * flappyfrequency * flappyAmplitude
//    }
//}
//
//struct Penguin : Brid {
//    let name:String
//    let canFly = false
//}
//
//struct SwiftBird : Brid,Flyable {
//    var name:String {
//        return "Swift\(version)"
//    }
//    let version:Double
//    let canFly = true
//    
//    var airspeedVelocity:Double {
//        return 2000.0
//    }
//}
//
//
//
//enum UnladenSwallow: Brid, Flyable {
//    case African
//    case European
//    case Unknown
//    var name: String {
//        switch self {
//        case .African:
//            return "African"
//        case .European:
//            return "European"
//        case .Unknown:
//            return "What do you mean? African or European?"
//        }
//    }
//    
//    var airspeedVelocity: Double {
//        switch self {
//        case .African:
//            return 10.0
//        case .European:
//            return 9.9
//        case .Unknown:
//            fatalError("You are thrown from the bridge of death!")
//        } 
//    }
//}









