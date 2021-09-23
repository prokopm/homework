//
//  main.swift
//  4l_ProkopenkoML
//
//  Created by Максим Прокопенко on 23.09.2021.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

//MARK: Перечисление
enum EngineStatus {
    case start
    case stop
}

enum WindowStatus {
    case open
    case close
}

enum TrunkStat {
    case full
    case empty
}

enum TypeEngine {
    case petrol
    case diesel
}

class Car {
    var name: String
    var year: UInt
    var engineVolume: Double
    var expenditure: Double
    var trunkVolume: UInt
    var numberOfSeats: UInt
    var engineStatus: EngineStatus
    var windowsStatus: WindowStatus
    var trunkStat: TrunkStat
    var typeEngine: TypeEngine

    func startEngine() {
        engineStatus = .start
        print("Двигатель заведен")
    }

    func stopEngine() {
        engineStatus = .stop
        print("Двигатель заглушен")
    }

    func windowClose() {
        windowsStatus = .close
        print("Окна закрыты")
    }
    func windowOpen() {
        windowsStatus = .open
        print("Окна открыты")
    }

    init(name: String,
         year: UInt,
         engineVolume: Double,
         expenditure: Double,
         trunkVolume: UInt,
         numberOfSeats: UInt,
         engineStatus: EngineStatus,
         windowsStatus: WindowStatus,
         trunkStat: TrunkStat,
         typeEngine: TypeEngine) {
        self.name = name
        self.year = year
        self.engineVolume = engineVolume
        self.expenditure = expenditure
        self.trunkVolume = trunkVolume
        self.numberOfSeats = numberOfSeats
        self.engineStatus = engineStatus
        self.windowsStatus = windowsStatus
        self.trunkStat = trunkStat
        self.typeEngine = typeEngine
    }
    func CarInfo() {
        print("""
            Автомобиль - \(name)

            Год выпуска - \(year) г

            Тип двигателя - \(typeEngine)
            Объем двигателя - \(engineVolume) л
            Расход топлива - \(expenditure) л / 100 км

            Объем багажника - \(trunkVolume) л
            Кол-во мест - \(numberOfSeats)

            Двигатель - \(engineStatus)
            Окна - \(windowsStatus)
            Багажник - \(trunkStat)
            """)
    }
}

//MARK: SportCar

final class SportCar: Car {
    let enginePower: UInt
    let driveUnit: String
    let supercharger: String
    let transmissionType : String

    override func CarInfo() {

            print("""
                Спорткар

                            Автомобиль - \(name)

                            Год выпуска - \(year) г

                            Тип двигателя - \(typeEngine)
                            Объем двигателя - \(engineVolume) л
                            Мощность двигателя - \(enginePower) л.с.
                            Нагнетатель - \(supercharger)
                            Расход топлива - \(expenditure) л / 100 км
                            Трансмиссия - \(transmissionType)
                            Привод - \(driveUnit)

                            Объем багажника - \(trunkVolume) л
                            Кол-во мест - \(numberOfSeats)

                            Двигатель - \(engineStatus)
                            Окна - \(windowsStatus)
                            Багажник - \(trunkStat) \n\n
                """ )
        }

        init(name: String,
             year: UInt,
             engineVolume: Double,
             expenditure: Double,
             trunkVolume: UInt,
             numberOfSeats: UInt,
             engineStatus: EngineStatus,
             windowsStatus: WindowStatus,
             trunkStat: TrunkStat,
             typeEngine: TypeEngine,
             enginePower: UInt,
             transmissionType: String,
             driveUnit: String,
             supercharger: String) {

            self.enginePower = enginePower
            self.driveUnit = driveUnit
            self.supercharger = supercharger
            self.transmissionType = transmissionType

            super.init(name: name,
                       year: year,
                       engineVolume: engineVolume,
                       expenditure: expenditure,
                       trunkVolume: trunkVolume,
                       numberOfSeats: numberOfSeats,
                       engineStatus: engineStatus,
                       windowsStatus: windowsStatus,
                       trunkStat: trunkStat,
                       typeEngine: typeEngine)
                  }
        }
var sportCarOne = SportCar(name: "Mercedes-Benz E63s", year: 2021, engineVolume: 6.3, expenditure: 9.1, trunkVolume: 540, numberOfSeats: 5, engineStatus: .start, windowsStatus: .close, trunkStat: .empty, typeEngine: .petrol, enginePower: 612, transmissionType: "роботизированная", driveUnit: "full", supercharger: "Twin turbo")
sportCarOne.CarInfo()

//MARK: TrunkCar

final class trunkCar: Car {
    let length: UInt
    let width: UInt
    let grossWeightOfTheTractor: UInt
    let transmissionType : String

    override func CarInfo() {

            print("""
                Грузовой автомобиль

                            Автомобиль - \(name)

                            Год выпуска - \(year) г

                            Длинна - \(length) мм
                            Ширина - \(width) мм
                            Полная масса тягоча - \(grossWeightOfTheTractor) т

                            Тип двигателя - \(typeEngine)
                            Объем двигателя - \(engineVolume) л


                            Расход топлива - \(expenditure) л / 100 км
                            Трансмиссия - \(transmissionType)

                            Объем багажника - \(trunkVolume) л
                            Кол-во мест - \(numberOfSeats)

                            Двигатель - \(engineStatus)
                            Окна - \(windowsStatus)
                            Багажник - \(trunkStat)
                """)
        }

        init(name: String,
             year: UInt,
             engineVolume: Double,
             expenditure: Double,
             trunkVolume: UInt,
             numberOfSeats: UInt,
             engineStatus: EngineStatus,
             windowsStatus: WindowStatus,
             trunkStat: TrunkStat,
             typeEngine: TypeEngine,
             grossWeightOfTheTractor: UInt,
             transmissionType: String,
             length: UInt,
             width: UInt) {

            self.length = length
            self.width = width
            self.grossWeightOfTheTractor = grossWeightOfTheTractor
            self.transmissionType = transmissionType

            super.init(name: name,
                       year: year,
                       engineVolume: engineVolume,
                       expenditure: expenditure,
                       trunkVolume: trunkVolume,
                       numberOfSeats: numberOfSeats,
                       engineStatus: engineStatus,
                       windowsStatus: windowsStatus,
                       trunkStat: trunkStat,
                       typeEngine: typeEngine)
                  }
        }
var trunkCarOne = trunkCar(name: "КамАЗ 54901", year: 2021, engineVolume: 11.96, expenditure: 30, trunkVolume: 40000, numberOfSeats: 3, engineStatus: .start, windowsStatus: .open, trunkStat: .full, typeEngine: .diesel, grossWeightOfTheTractor: 44, transmissionType: "Механическая", length: 6350, width: 2550)
trunkCarOne.CarInfo()
