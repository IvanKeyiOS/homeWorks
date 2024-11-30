import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
/*
 Создайте класс Car. Наделите его свойствами и методами на ваше усмотрение.
 Класс должен содержать свойства, которые будут является типами перечислений. Подумайте, какие свойства удобнее объявлять как перечисления.
 Создайте 2 класса наследника - Sedan и Crossover (или другие типы автомобилей на ваше усмотрение)
 Добавьте в классы-наследники свойства, которые отличают ваши автомобили друг от друга. Напр. блокировка дифференциала, рама, привод 4х4 и др.
 В родительский класс добавьте метод start, который будет заводить вашу машину. Закройте этот метод от переопределения.
 В родительский класс добавьте метод setup, который будет задавать вашему авто какие либо характеристики.
 Переопределите метод setup в классах-наследниках.
*/

enum Fuel {
    case diesel
    case gasoline
    case hybrid
    case naturalGas
}

enum Tranmission {
    case manual
    case sequentialManual
    case semiAutomatic
    case automatedManualOrClutchlessManual
    case automatic
    case hydraulicAutomatic
    case dualClutch
}

class Car {
    let mark: String
    let model: String
    let typeFuel: Fuel
    let transmission: Tranmission
    let engine: Double
    
    init(mark: String,
         model: String,
         typeFuel: Fuel,
         transmission: Tranmission,
         engine: Double) {
        self.mark = mark
        self.model = model
        self.typeFuel = typeFuel
        self.transmission = transmission
        self.engine = engine
    }
    
    final func start() {
        print("Start engine")
    }
    
    func setup() {
        print("Adjust suspension")
    }
}

let car = Car(mark: "Volvo", model: "XC90", typeFuel: .gasoline, transmission: .automatic, engine: 3.0)
car.start()
car.setup()

class Crossover: Car {
    let isLockDifferential: Bool
    
    init(mark: String,
         model: String,
         typeFuel: Fuel,
         transmission: Tranmission,
         engine: Double,
         isLockDifferential: Bool) {
        self.isLockDifferential = isLockDifferential
        super.init(mark: mark, model: model, typeFuel: typeFuel, transmission: transmission, engine: engine)
    }
    
    override func setup() {
        print("Turn of all-wheel drive")
    }
}

let crossover = Crossover(mark: "BMW", model: "X6", typeFuel: .diesel, transmission: .hydraulicAutomatic, engine: 5.0, isLockDifferential: true)
crossover.start()
crossover.setup()

class Sedan: Car {
    let weight: Int
    
    init(mark: String,
         model: String,
         typeFuel: Fuel,
         transmission: Tranmission,
         engine: Double,
         weight: Int) {
        self.weight = weight
        super.init(mark: mark, model: model, typeFuel: typeFuel, transmission: transmission, engine: engine)
    }
    
    override func setup() {
        print("Open panoramic roof")
    }
}

let sedan = Sedan(mark: "Audi", model: "A8", typeFuel: .naturalGas, transmission: .semiAutomatic, engine: 3.0, weight: 2080)
sedan.start()
sedan.setup()

/*
 TODO: - ❓ Вопросы к изучению:
 - Что значит наследование?
 - Какой класс называется базовым или суперклассом, какой подклассом наследником?
 - В чем заключается механизм переопределения? Что мы можем переопределять?
 - Как запретить переопределение?
 - Как запретить наследование от класса?
 */

//override func setup() {
//    print("Turn off all-wheel drive")
//}
