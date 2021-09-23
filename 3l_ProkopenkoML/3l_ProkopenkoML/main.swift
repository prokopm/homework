//
//  main.swift
//  3l_ProkopenkoML
//
//  Created by Максим Прокопенко on 15.09.2021.
//

import Foundation

enum engineStatus {
    case start, stop
}

enum windowStatus {
    case open, close
}

enum trunkStat {
    case full, empty
}

struct Car {
    let name: String
    let year: Int
    var trunkVolume: Double {
        willSet {
            if trunkStat == .empty && trunkVolume > 0 && trunkVolume != 0 && newValue < trunkVolume {
                let space = trunkVolume - newValue
                print ("\(name) свободное место: \(space)")
            } else { print("В \(name) нет свободного места.")}
    }
    }
    var engineStatus : engineStatus {
            willSet {
                if newValue == .start {
                    print ("\(name) двигатель заведен")
                } else {print("\(name) двигатель не работает")}
    }
    }
        var windowStatus : windowStatus {
            willSet {
                if newValue == .open {
                    print("\(name) окна открыты")
                } else { print("\(name) окна закрыты") }
    }
    }
        var trunkStat : trunkStat
        mutating func emptyTrunck() {
            self.trunkStat = .empty
            print ("\(name) свободное место")
    }
    }
var sportCar = Car(name: "Porsche", year: 2021, trunkVolume: 145 , engineStatus: .stop, windowStatus: .close, trunkStat: .full)
var trunkCar = Car(name: "Mercedes Benz Actros", year: 2020, trunkVolume: 40000, engineStatus: .start, windowStatus: .close, trunkStat: .empty)

sportCar.trunkStat = .empty
sportCar.engineStatus = .start
sportCar.windowStatus = .open

trunkCar.engineStatus = .stop
trunkCar.trunkStat = .full
trunkCar.windowStatus = .open

print("Информация по машине \(sportCar.name): год: \(sportCar.year), свободное место: \(sportCar.trunkVolume), двигатель \(sportCar.engineStatus), окна: \(sportCar.windowStatus)")
print("Информация по машине \(trunkCar.name): год: \(trunkCar.year), свободное место: \(trunkCar.trunkVolume), двигатель \(trunkCar.engineStatus), окна: \(trunkCar.windowStatus)")
