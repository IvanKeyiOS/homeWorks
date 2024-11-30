import UIKit

// MARK: - 🏠 Домашнее задание.

// TODO: - 🧑‍💻
/*
 Напишите замыкание, которое принимает 2 числа, а возвращает сумму их сложения. Присвойте замыкание переменной и вызовите его.
 */
let sumCloser = { (firstNumber: Int, secondNumber: Int) -> Int in
    return firstNumber + secondNumber
}
let sumOfTwoNumbers = sumCloser(5, 4)

/*
 Объявите строку произвольного значения. Отсортируйте ее по возрастанию, используя sorted и синтаксис последующего замыкания.
 */

let someString: String = "Follow this exercise to try the GitHub flow"

//let lowerString: String = someString.lowercased()
//let modernString: String = lowerString.replacingOccurrences(of: " ", with: "")

let string = someString.sorted(by: { $0 < $1})
print(string)
print("====================================================================================================================================")
/*
 Напишите функцию, которая принимает замыкание и ничего не возвращает. Замыкание тоже ничего не возвращает и не принимает.
 Функция должна посчитать от 1 до 5, каждый раз печатая номер итерации.
 После завершения цикла, вызовите замыкание.
 При вызове функции добавьте в замыкание print("Closure").
 Обратите внимание на порядок выполнения кода.
 */

func funcGetTheClosure(closure: ()) {
    var number: Int = 0
    while number < 5 {
        number += 1
        print(number)
    }
}

funcGetTheClosure(closure: print("Closure"))
print("====================================================================================================================================")
/*
 Напишите функцию modify, которая принимает массив типа Int и замыкание типа (Int) -> Int. Функция должна возвращать массив типа Int. Напишите реализацию функции, в которой замыкание будет вызвано для каждого элемента массива и будет этот элемент неким образом преобразовывать. Верните из функции массив, состоящий из элементов возвращенных замыканием.
 Вызовите функцию modify и напишите реализацию замыкания, пусть замыкание возвращает элемент умноженный на 2.
 */

func modify(numbersArray: [Int], closure: (Int) -> Int) -> [Int] {
    var someNumbersArray: [Int] = []
    for number in numbersArray {
        let modifyClosure = closure(number)
        someNumbersArray.append(modifyClosure)
    }
    return someNumbersArray
}

print(modify(numbersArray: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 51, 41, 31, 21, 11, ], closure: { $0 * 2 }))
print("====================================================================================================================================")

/*
 Создайте класс Task+. Объявите в нем свойство reloadData опционального типа (([String]) -> Void)?.+
 Добавьте в класс метод get+, который будет генерировать массив из 5 случайных чисел в любом промежутке+ и передавать в свойство reloadData полученный массив, но с элементами типа String. Чтобы вызвать опциональное замыкание, поставьте знак вопроса после названия свойства и перед круглыми скобками с параметрами типа closure?(parameters)
 Создайте экземпляр этого класса, присвойте свойству reloadData замыкание, которое будет распечатывать в консоль каждый элемент массива.
 Вызовите метод get.
 */

class Task {
    var reloadData: (([String]) -> Void)? = { [string] in
        print($0)
    }
    var arrayForReloadData: [String] = []
    
    func get() -> [String] {
        var randomNumbersArray: [Int] = []
        
        for item in 1...5 {
            randomNumbersArray.append(Int.random(in: 1...100))
            arrayForReloadData = randomNumbersArray.map { String($0) }
        }
        return arrayForReloadData
    }
}

let task = Task()
task.reloadData?(task.get())
task.get()

// Дополнительное задание по желанию

/*
Создайте структуру Car со свойствами brand, number, isBroken (false по умолчанию).+
Добавьте инициализатор и метод move, который будет печать "move" если машина не сломана или сообещние о том, что машина сломана, если она сломана.+
 */
struct Car {
    var brand: String
    var number: Int
    var isBroken: Bool = false
    
    init(brand: String, number: Int, isBroken: Bool) {
        self.brand = brand
        self.number = number
        self.isBroken = isBroken
    }
    
    func move() {
        if isBroken == false {
            print("Move")
        } else {
            print("Car is broken")
        }
    }
}

/*
 Создайте класс Autoservice со свойством cars, которое будет хранить экземпляры машин, приехавших на ремонт.+
 Добавьте в свойство cars наблюдателя, чтобы при изменении значения печатать в консоль информацию о том, что такая-то машина с таким-то номером принята в ремонт либо выдана из ремонта.-
 Добавьте в класс Autoservice функцию fix, которая будет принимать в качестве параметров Car и замыкание (ничего не принимающее и ничего не возвращающее).
 
 Внутри функции выполните задержку в 3 секунды, сымитировав процесс ремонта.
 Не забудьте при принятии машины в ремонт добавить ее в свойство cars, а после выполнения ремонта - удалить.
 Для задержки используйте следующий код:
 
 DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
 // Это замыкание, которое вызывается после задержки в 3 сек. Вызовете здесь замыкание, которое функция принимает как параметр.
 }
 */
class Autoservice {
    var cars: [String] {
        willSet {
            guard cars != newValue else { return }
            print("Car \"\(cars)\" issued from the service")
        }
        didSet {
            guard cars != oldValue else { return }
            print("Car \"\(cars)\" accepted to the service")
        }
    }
    
    init(cars: [String]) {
        self.cars = cars
    }
    
    func fix(Car: Car, _: () -> Void) {
        Autoservice(cars: [])
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            ()
        }
    }
}

/*
 Создайте класс Person. В классе должны быть свойства name, car, service.
 Добавьте инициализатор.
 Добавьте метод goToHome, который будет обращаться к экземпляру машины и вызывать метод move.
 Добавьте метод goToService, который будет обращаться к экземпляру сервиса и вызывать метод fix. По завершении ремонта пометьте, что машина больше не сломана, изменив значение isBrocken на false.
 */

class Person {
    var name: String
    var car: Car
    var service: Autoservice
    
    init(name: String, car: Car, service: Autoservice) {
        self.name = name
        self.car = car
        self.service = service
    }
    
    func goToHome() {
        Car(brand: "", number: 1, isBroken: false).move()
    }
    
    func goToService() {
        Autoservice.init(cars: []).fix(Car: Car(brand: "", number: 1, isBroken: false),)
            }
}

/*
 Проинициализируйте экземпляры классов, сначала Autoservice, потом Car, потом Person.
 У person вызовите метод goToHome()
 Обратитесь к экземпляру Car и сломайте машину.
 У person вызовите метод goToService() и следом goToHome().
 Разберитесь в порядке выполнения кода.
 */
let autoservice = Autoservice(cars: [:])
let car = Car(brand: "", number: 1, isBroken: false)
let person = Person(name: "Stephen", car: Car(brand: "BMW", number: 2222, isBroken: <#T##Bool#>), service: <#T##Autoservice#>)

car.isBroken == true

person.goToService()
person.goToHome()
/*
 TODO: - ❓ Вопросы к изучению:
 - Что такое методы?
 - Что такое closures?
 - Как используются trailing closures?
 - В чем особенность захвата значений внутри замыкания?
 - Что такое escaping closures (сбегающие замыкания)?
 - Как используются автозамыкания?
 */

