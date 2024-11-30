import UIKit

// MARK: - 🏠 Домашнее задание.

// TODO: - 🧑‍💻
/*
 Создайте такую иерархию классов, чтобы хотя бы по одному разу использовать каждый из существующих типов инициализаторов.
 Подпишите комментариями названия инициализаторов.
 Добавьте деинициализатор.
 */

class Motorcycle {
    let typeOfMotorcycle: String
    let weight: Int
    let yearOfProduction: Int
    
    // Required init
    required init(typeOfMotorcycle: String,
                  weight: Int,
                  yearOfProduction: Int) {
        self.typeOfMotorcycle = typeOfMotorcycle
        self.weight = weight
        self.yearOfProduction = yearOfProduction
    }
}

class Naked: Motorcycle {
    let maxSpeed: Int
    
    // Designed init
    init(maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        super.init(typeOfMotorcycle: "Naked",
                   weight: 150,
                   yearOfProduction: 1900)
    }
    required init(typeOfMotorcycle: String,
                  weight: Int,
                  yearOfProduction: Int) {
        self.maxSpeed = 190
        super.init(typeOfMotorcycle: typeOfMotorcycle,
                   weight: weight,
                   yearOfProduction: yearOfProduction)
    }
}

class Honda: Motorcycle {
    let model: String
    let isThereDisksBrake: Bool
    
    init(model: String, isThereDisksBrake: Bool) {
        self.model = model
        self.isThereDisksBrake = isThereDisksBrake
        super.init(typeOfMotorcycle: "Naked",
                   weight: 150,
                   yearOfProduction: 1900)
    }
    
    required init(typeOfMotorcycle: String, weight: Int, yearOfProduction: Int) {
        self.model = "CB500"
        self.isThereDisksBrake = true
        super.init(typeOfMotorcycle: typeOfMotorcycle,
                   weight: weight,
                   yearOfProduction: yearOfProduction)
    }
    
    // Convenience init
    convenience init(model: String) {
        self.init(model: model, isThereDisksBrake: true)
    }
}

let motorcycle = Motorcycle(typeOfMotorcycle: "Naked", weight: 220, yearOfProduction: 2000)
var naked = Naked(typeOfMotorcycle: "Turist", weight: 300, yearOfProduction: 2024)
naked = Naked(maxSpeed: 250)
var honda = Honda(model: "Honda")
Honda(model: "Honda", isThereDisksBrake: true)
Honda(typeOfMotorcycle: "Cross", weight: 190, yearOfProduction: 2012)

