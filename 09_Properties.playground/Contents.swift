import UIKit

// MARK: - 🏠 Домашнее задание.

// TODO: - 🧑‍💻
/* 1.
 Создайте класс Student со свойством firstName. Добавьте property observer для свойства firstName, чтобы печатать сообщение каждый раз как свойство будет изменено.
 Добавьте в класс свойство isValid, которое будет проверять минимальную и максимальную длину имени. Оно не может быть короче 2 символов и длиннее 15 символов.
 */

class Student {
    var firstName: String = "" {
        didSet {
            print("First name \"\(oldValue)\" was changed to \"\(firstName)\"")
        }
    }
    var isValid: Bool {
        if firstName.count >= 2 && firstName.count <= 15 {
            print("First name \"\(firstName)\" is valid")
        } else {
            print("First name \(firstName) is not valid")
        }
        return true
    }
    
    init(firstName: String) {
        self.firstName = firstName
    }
}

var name = Student(firstName: "John")
name.firstName = "Patrik"
name.isValid
name.firstName = "J"
name.isValid
name.firstName = "Ed"
name.isValid
name.firstName = "Абдурахмангаджи"
name.isValid
name.firstName = "Макадэваквадоквэ"
name.isValid

/* 2.
 Создайте класс Person со свойством age, типа Int. Добавьте property observer к свойству age, чтобы гарантировать, что свойство не может быть отрицательным. Если приходит отрицательное значение, то свойство должно возвращать 0.
 */

class Person {
    var age: Int = 0 {
        didSet {
            guard age <= oldValue else { return }
            age = oldValue
            print("Age should not be negative")
        }
    }
}

var person = Person()

person.age = -23
print(person.age)

/*
 Создайте структуру Rectangle со свойствами width и height. Добавьте computed property с именем area, которое будет возвращать площадь прямоугольника (width * height).
 */

struct Rectangle {
    var width: Double = 3.0
    var height: Double = 4.0
    var area: Double {
        return width * height
    }
}

var square = Rectangle()
print("Square is equal - \"\(square.area)\"")
square.height = 43.565
square.width = 32.253532
print("Square is equal - \"\(square.area)\"")

/*
 Создайте класс User, который должен содержать имя, фамилию, возраст, рост.+
 Измените свойство возраст так, чтобы при изменении его значения в консоль выводилось поздравление с Днем Рождения.+
 Добавьте в класс свойства, чтобы контролировать минимальный и максимальный вес объекта (3 свойства - вес, минимальный вес и максимальный вес). При несоответствии выводить сообщение с указанием разницы и присваивать свойству пороговое значение (если ниже минимального, то минимальное и если выше максимального, то максимальное).
 Измените свойство вес так, чтобы при присваивании ему значения в консоль выводилось сообщение похудел или потостел объект.+
 Создайте свойство, которое будет содержать общее количество всех созданных объектов класса User.+
 */

@propertyWrapper
struct RangedValue {
    private var weight: Int = 90
    private var min: Int
    private var max: Int
    
    var wrappedValue: Int {
        get {
            return weight
        }
        set {
            switch newValue {
            case ..<min:
                weight = min
            case min...max:
                weight = newValue
            default:
                weight = max }
        }
    }
    init(min: Int = 60, max: Int = 140) {
        self.min = min
        self.max = max
    }
}

class User {
    static var count: Int = 0
    var firstName: String = "Pieter"
    var secondName: String = "Van den Hoogenband"
    var age: Int = 46 {
        didSet {
            guard age != oldValue else { return }
            print("Happy Birthday!!!")
        }
    }
    var height: Int = 193
    @RangedValue(min: 60, max: 140) var weight: Int {
        didSet {
            guard weight != oldValue else { return}
            weight > oldValue ? print("Person gaining weight") : print("Person losing weight")
        }
    }
    @RangedValue(min: 60) var minWeight: Int
    @RangedValue(max: 140) var maxWeight: Int
    
    init(firstName: String, secondName: String, age: Int, height: Int, weight: Int, minWeight: Int, maxWeight: Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.height = height
        self.weight = weight
        self.minWeight = minWeight
        self.maxWeight = maxWeight
        User.count += 1
    }
}
RangedValue.init(min: 20, max: 500)
var newPerson = User(firstName: "Adwin", secondName: "Blake", age: 44, height: 185, weight: 85, minWeight: 55, maxWeight: 125)
newPerson.age = 47
newPerson.age = 47
newPerson.age = 48
newPerson.weight = 93
newPerson.weight = 53

print("How many are objects in class: \"User\" -> \(User.count)")

newPerson.minWeight = 300
print(newPerson.minWeight)
newPerson.weight = 25
print(newPerson.weight)
RangedValue.init(min: 20, max: 500)
var anotherUser = User(firstName: "Murray", secondName: "Andy", age: 40, height: 185, weight: 78, minWeight: 55, maxWeight: 135)
print("How many are objects in class: \"User\" -> \(User.count)")
anotherUser.weight = 98
print(anotherUser.weight)

/*
 Дополнительное задание (по желанию)
 
 Решите задачу №2, используя геттер и сеттер вместо property observer
 */

class SecondPerson {
    private var _age: Int
    var age: Int {
        get {
            if _age <= 0 {
                _age = 0
                print("Age should not be negative")
            }
            return _age
        }
        set {
            _age = newValue
        }
    }
    init(age: Int = 12) {
        _age = age
    }
}
var peter = SecondPerson()
peter.age = 12
print(peter.age)

/*
 TODO: - ❓ Вопросы к изучению:
 - В чем разница между stored и computed properties?
 - Что значит lazy?
 - Что такое getter и setter?
 - Когда используются property observers?
 - Зачем нужны и как используются property wrappers?
 */

