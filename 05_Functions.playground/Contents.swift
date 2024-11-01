import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 */

// - Объявите и реализуйте простую функцию, которая ничего не принимает и ничего не возвращает. Функция должна печатать в консоль приветствие. Добавьте вызов функции.

func printHello() {
    print("Hello there!)")
}

printHello()

// - Объявите и реализуйте функцию, которая принимает одно значение - имя, и печатает в консоль именованное приветствие. Используйте parameter name only. Вызовите функцию
let name: String = "Kate"
let nameDif: String = "Jennifer"
func printHelloForName(nameOnly: String) {
    print("Hello \(nameOnly)!)")
}

printHelloForName(nameOnly: nameDif)
printHelloForName(nameOnly: name)
// - Скопируйте предыщее решение и измените его, используя argument label.


func printHelloForName(for nameOnly: String) {
    print("Hello \(nameOnly)!)")
}

printHelloForName(for: "Alex")

// - Объявите массив типа String с несколькими значениями. Реализуйте функцию, которая принимает объявленный массив, добавляет к каждому значению массива "!" и возвращает массив с измененными значениями.

let nameArray: [String] = ["Paul", "John", "James", "Colin", "Bruce", "Richard", "Stephen"]

func addToEveryItemArray(array: [String]) -> [String] {
    var arrayWithAdd: [String] = []
    for i in array {
        arrayWithAdd.append(i + "!")
    }
    return arrayWithAdd
}
addToEveryItemArray(array: nameArray)

// - Измените предыдущее решение, используя сквозной параметр inout.

var anotherNameArray: [String] = ["George", "Michael", "Shaquil", "Broony", "Andre", "Shauon", "David"]

func addSymbolToArray(array: inout [String]) -> [String] {
    var arrayWithAdd: [String] = []
    for i in array {
        arrayWithAdd.append(i + "!")
    }
    return arrayWithAdd
}
addSymbolToArray(array: &anotherNameArray)

// - Напишите функцию, которая принимает 2 параметра типа Int и возвращает сумму этих параметров.

let firstParameter: Int = 7
let secondParameter: Int = 8

func sumTwoParameter(first: Int, second: Int) -> Int {
    return first + second
}

sumTwoParameter(first: firstParameter, second: secondParameter)

// - Создайте функцию, которая принимает массив типа Int и возвращает tuple с минимальным и максимальным значениями массива.

var numbersArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
var someNumbersArray: [Int] = [4623964329052, 234239562305, 23434, 3243242, -324324, 3423432423]
func retrieveMaxAndMinValue(array: [Int]) -> (Int, Int) {
    
    let min: Int = array.min() ?? 0
    let max: Int = array.max() ?? 0
    
    return (min, max)
}
retrieveMaxAndMinValue(array: someNumbersArray)
retrieveMaxAndMinValue(array: numbersArray)
/*
 Представьте, что вы работаете над программой по учету студентов в университете.
 Создайте словарь, который будет содержать имена студентов и средний бал каждого из них. Это будут студенты, зачисленные в наш университет.
 Добавьте функцию, которая будет в качестве параметра принимать имя студента и зачислять его в университет. Срединй бал в начале обучения неизвестен.
 Добавьте функцию, которая будет присваивать студентам средний балл. В итоге все студенты должны иметь средний балл.
 Добавьте функцию, которая определит лучшего студента для произношения речи на церемонии выдачи дипломов.
 Добавьте функцию, которая будет распечатывать в консоль речь лучшего ученика. Пометьте, кто ее произносит.
 Добавьте функцию, которая будет выдавать студенту диплом (в качестве действия можете распечатать информацию в консоль с именем студента и информацией о выдаче ему диплома).
 Добавьте функцию, которая будет отчислять студента из университета. Ведь после выдачи дипломов, студентов нужно отчислить.
 Наполните университет студентами и доведите их до выпуска!
 */

let universityStudentsDictionary: [String: Double] = [
    "Irwin": 7.8,
    "Hakim": 6.6,
    "Larry": 4.3,
    "Ray": 3.2,
    "Becky": 9.6,
    "Vanessa": 8.4,
    "Megan": 7.7,
    "Tray": 7.5,
    "Mike": 8.8,
    "JJ": 9.9
]

/*Добавьте функцию, которая будет в качестве параметра принимать имя студента и зачислять его в университет. Срединй бал в начале обучения неизвестен.*/

func admitStudentInUniversity(name: String) {
    for (key, _) in universityStudentsDictionary {
        if name == key {
            print("\(name) is accepted to the university")
        }
    }
}
admitStudentInUniversity(name: "Mike")

/*Добавьте функцию, которая будет присваивать студентам средний балл. В итоге все студенты должны иметь средний балл.*/
func giveAverageGrade(name: String)  {
    for (key, value) in universityStudentsDictionary {
        if name == key {
            print("Student \(key) has average grade \(value)")
        }
    }
}
giveAverageGrade(name: "Tray")

/*  Добавьте функцию, которая определит лучшего студента для произношения речи на церемонии выдачи дипломов.*/

func defineTheBestStudent() {
    let maxValue = universityStudentsDictionary.values.max()
    for (key, value) in universityStudentsDictionary {
        if value == maxValue {
            print("\(key) is the best student who will give speech at the graduation ceremony")
        }
    }
}
defineTheBestStudent()

//Добавьте функцию, которая будет распечатывать в консоль речь лучшего ученика. Пометьте, кто ее произносит.

func printTheSpeechTheBestStudent() {
    let maxValue = universityStudentsDictionary.values.max()
    for (key, value) in universityStudentsDictionary {
        if value == maxValue {
            print("""
                  \tGood afternoon esteemed teachers, dear classmates, and respected guests. \nThank you for this incredible honor. \nI am deeply moved and will always remember this moment as a testament to what we can achieve together.\r\(key) gave the speech.
                  """)
        }
    }
}
printTheSpeechTheBestStudent()
/* Добавьте функцию, которая будет выдавать студенту диплом (в качестве действия можете распечатать информацию в консоль с именем студента и информацией о выдаче ему диплома).*/

func giveDiplomaToStudent() {
    for (key, _) in universityStudentsDictionary {
        print("The student \(key) received a diploma")
    }
}

giveDiplomaToStudent()

/*Добавьте функцию, которая будет отчислять студента из университета. Ведь после выдачи дипломов, студентов нужно отчислить.*/

func expelledStudentFromUniversity() {
    for (key, _) in universityStudentsDictionary {
        print("The student \(key) was expelled after received a diploma")
    }
}

expelledStudentFromUniversity()
    /*
     TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
     - Что такое функции?
     - Что такое argument label and parameter name?
     - Что такое сквозной параметр (inout)?
     - Что такое nested functions?
     */
