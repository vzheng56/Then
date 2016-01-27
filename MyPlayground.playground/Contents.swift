//: Playground - noun: a place where people can play

import UIKit

protocol Bird:BooleanType {
    var name: String { get }
    var canFly: Bool { get }
}

extension Bird where Self: Flyable {
    // Flyable birds can fly!
    var canFly: Bool { return true }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}


struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}


struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    
    // Swift is FAST!
    var airspeedVelocity: Double { return 2000.0 }
}

//let swiftBird = SwiftBird()
//
//print(swiftBird.canFly)
//print(swiftBird.version)



enum UnladenSwallow: Bird, Flyable {
    case African
    case European
    case Unknown
    
    var name: String {
        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "What do you mean? African or European?"
        }
    }
    
    var airspeedVelocity: Double {
        switch self {
        case .African:
            return 10.0
        case .European:
            return 9.9
        case .Unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}


//extension CollectionType {
//    func skip(skip: Int) -> [Generator.Element] {
//        guard skip != 0 else { return [] }
//
//        var index = self.startIndex
//        var result: [Generator.Element] = []
//        var i = 0
//        repeat {
//            if i % skip == 0 {
//                result.append(self[index])
//            }
//            index = index.successor()
//            i++
//        } while (index != self.endIndex)
//
//        return result
//    }
//}
//
//let bunchaBirds: [Bird] =
//[UnladenSwallow.African,
//    UnladenSwallow.European,
//    UnladenSwallow.Unknown,
//    Penguin(name: "King Penguin"),
//    SwiftBird(version: 10),
//    FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0)]
//
//bunchaBirds.skip(3)



extension BooleanType where Self: Bird {
    var boolValue: Bool {
        return self.canFly
    }
}


if UnladenSwallow.African {
    print("I can fly!")
} else {
    print("Guess I’ll just sit here :[")
}


// Counts the number of characters in the array
let num = ["frog", "pants"].map { $0.length }.reduce(0) { $1} // returns 9

num










