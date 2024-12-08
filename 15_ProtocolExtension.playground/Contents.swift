import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
// Создайте расширение для типа String и добавьте в него свойство trim, которое будет возвращать строку без пробелов вначале и конце. Такое расширение удобно использовать, если пользователь вводит какое-то значение, но при этом вначале и/или конце вставляет пробел. Нам нужно отсечь пробелы

extension String {
    var trim: String {
        self.trimmingCharacters(in: .whitespaces)
    }
}

let someString = " it is realy intresting            "
print("\"\(someString)\"")
print("\"\(someString.trim)\"")

// Добавьте в расширение для типа String метод truncate(length: Int), который отсечет лишние символы если строка длиннее чем length и заменит их на ...

extension String {
    func truncate(length: Int, with changer: String = "...") -> String {
        guard self.count > length else { return self }

        let endIndex = self.index(self.startIndex, offsetBy: length - changer.count)
        return self[self.startIndex..<endIndex] + changer
    }
}

let myString = someString.truncate(length: 26, with: "...")
print(myString)

/* Создайте протокол EmployeeProtocol, который должен требовать реализовать свойства:
 - имя. Свойство доступно только для чтения
 - возраст
 - стаж работы
 - зарплата брутто
 - зарплата нетто
 
 Добавьте методы:
 - статический метод, выводящий в консоль информацию о названии класса
 - метод, выводящий в консоль всю информацию о работнике в читаемом виде
*/

protocol EmployeeProtocol {
    var name: String { get }
    var age: Int { get set }
    var workExperience: Int { get set }
    var grossSalary: Int { get set}
    var netSalary: Int { get set }
    
    static func printInfoAboutClassName() -> String
    
    func printInfoAboutEmployee() -> String
}

/* Напишите экстеншен для протокола и реализуйте свойство "зарплата нетто", которое должно вычисляться из зарплаты брутто - налог (21%).
 По возможности реализуйте требуемые методы.
 */

extension EmployeeProtocol {
    var tax: Int { return grossSalary * 21 / 100 }
    var salaryNet: Int { return grossSalary - tax }
}

// Создайте два класса Driver и Pilot, подчините их протоколу. Добавьте инициализаторы.

class Driver: EmployeeProtocol {
    var name: String
    var age: Int
    var workExperience: Int
    var grossSalary: Int
    var netSalary: Int
    
    static func printInfoAboutClassName() -> String {
        "Name class is \(Driver.self)"
//        - статический метод, выводящий в консоль информацию о названии класса
    }
    
    func printInfoAboutEmployee() -> String{
        "Employee name is \(name), they are \(age) years old, with \(workExperience) years work experience, their salary is \(grossSalary) gross and \(netSalary) net"
//        - метод, выводящий в консоль всю информацию о работнике в читаемом виде
    }
    
    init(name: String, age: Int, workExperience: Int, grossSalary: Int, netSalary: Int) {
        self.name = name
        self.age = age
        self.workExperience = workExperience
        self.grossSalary = grossSalary
        self.netSalary = netSalary
    }
    
}

class Pilot: EmployeeProtocol {
    var name: String
    var age: Int
    var workExperience: Int
    var grossSalary: Int
    var netSalary: Int
    
    static func printInfoAboutClassName() -> String {
        "Name class is \(Pilot.self)"
//        - статический метод, выводящий в консоль информацию о названии класса
    }
    
    func printInfoAboutEmployee() -> String {
        "Employee name is \(name), they are \(age) years old, with \(workExperience) years work experience, their salary is \(grossSalary) gross and \(netSalary) net"
//        - метод, выводящий в консоль всю информацию о работнике в читаемом виде
    }
    
    init(name: String, age: Int, workExperience: Int, grossSalary: Int, netSalary: Int) {
        self.name = name
        self.age = age
        self.workExperience = workExperience
        self.grossSalary = grossSalary
        self.netSalary = netSalary
    }
    
}

// Создайте экземпляры написанных классов и проверьте работу каждого метода.

Pilot.printInfoAboutClassName()
Driver.printInfoAboutClassName()

let pilot = Pilot(name: "John Smith", age: 33, workExperience: 5, grossSalary: 1200, netSalary: 1000)
let driver = Driver(name: "Sabine Smidt", age: 30, workExperience: 7, grossSalary: 3600, netSalary: 3000)

print(pilot.printInfoAboutEmployee())
print((driver.printInfoAboutEmployee()))
driver.salaryNet
pilot.salaryNet

/*
 TODO: - ❓ Вопросы к изучению:
 - Что значит наследование?
 - Какой класс называется базовым или суперклассом, какой подклассом наследником?
 - В чем заключается механизм переопределения? Что мы можем переопределять?
 - Как запретить переопределение?
 - Как запретить наследование от класса?
 */

