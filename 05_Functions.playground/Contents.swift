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

let nameFirst: String = "Kate"
let nameDif: String = "Jennifer"

func printHelloForName(nameOnly: String) {
    print("Hello \(nameOnly)!)")
}

printHelloForName(nameOnly: nameDif)
printHelloForName(nameOnly: nameFirst)

// - Скопируйте предыдущее решение и измените его, используя argument label.

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
func sumTwoParameter(first: Int, second: Int) -> (Int) {
    first + second
}
let sum: Int = sumTwoParameter(first: firstParameter, second: secondParameter)
print(sum)

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
var applicantsDictionary: [String: Double] = ["Irwin": 0.0,
                                              "Hakim": 0.0,
                                              "Larry": 0.0,
                                              "Ray": 0.0,
                                              "Becky": 0.0,
                                              "Vanessa": 0.0,
                                              "Megan": 0.0,
                                              "Tray": 0.0,
                                              "Mike": 0.0,
                                              "JJ": 0.0]
print(applicantsDictionary)

/*Добавьте функцию, которая будет в качестве параметра принимать имя студента и зачислять его в университет. Срединий бал в начале обучения неизвестен.*/

func admitApplicantsInUniversity() -> [String: Double]{
    var students = [String: Double]()
    for (name, grade) in applicantsDictionary {
        students[name] = grade
    }
    return students
}

admitApplicantsInUniversity()
var students = admitApplicantsInUniversity()
print(students)


/*Добавьте функцию, которая будет присваивать студентам средний балл. В итоге все студенты должны иметь средний балл.*/

func giveAverageGrade() -> [String: Double] {
    var studentsAverageGrade = [String: Double]()
    for (name, grade) in students {
        let range: Double = Double.random(in: 4.5...5)
        studentsAverageGrade[name] = range
    }
    return studentsAverageGrade
}

giveAverageGrade()
var studentsAverageGrade = giveAverageGrade()
print(studentsAverageGrade)

/*  Добавьте функцию, которая определит лучшего студента для произношения речи на церемонии выдачи дипломов.*/

func defineTheBestStudent() -> (String){
    let maxValue = studentsAverageGrade.values.max() ?? 0.0
    var bestStudentName: String = ""
    for (name, grade) in studentsAverageGrade {
        if grade == maxValue {
            bestStudentName = name
            print("\(name) is the best student who will give speech at the graduation ceremony and his(she) grade is \(grade)")
        }
    }
    return (bestStudentName)
}
let bestStudent = defineTheBestStudent()

//Добавьте функцию, которая будет распечатывать в консоль речь лучшего ученика. Пометьте, кто ее произносит.

func printTheSpeechTheBestStudent(bestStudent: String) {
            print("""
                  \tGood afternoon esteemed teachers, dear classmates, and respected guests. \nThank you for this incredible honor. \nI am deeply moved and will always remember this moment as a testament to what we can achieve together.\r\"\(bestStudent)\" gave the speech.
                  """)
        }
printTheSpeechTheBestStudent(bestStudent: bestStudent)

/* Добавьте функцию, которая будет выдавать студенту диплом (в качестве действия можете распечатать информацию в консоль с именем студента и информацией о выдаче ему диплома).*/

func giveDiplomaToStudent() {
    for (key, _) in students {
        print("The student \(key) received a diploma")
    }
}

giveDiplomaToStudent()


/*Добавьте функцию, которая будет отчислять студента из университета. Ведь после выдачи дипломов, студентов нужно отчислить.*/

func expelledStudentFromUniversity() {
    students.removeAll()
    print("Number of students at the university after graduation: \(students.count)")
}

expelledStudentFromUniversity()

/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Что такое функции?
 - Что такое argument label and parameter name?
 - Что такое сквозной параметр (inout)?
 - Что такое nested functions?
 */
