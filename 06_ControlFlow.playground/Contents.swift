import UIKit
// MARK: - 🏠 Домашнее задание.
// TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
// - используя while loop распечатайте "Hello" 5 раз

var word: Int = 1
while word <= 5 {
    print("\(word)Hello")
    word += 1
}

print("=======================================")

// - напишите решение для той же задачи, используя repeat-while loop

word = 1
repeat {
    print("\(word)Hello")
    word += 1
} while word <= 5

// - объявите строку произвольного значения и используя switch statement сделайте все гласные в строке заглавными. Распечатайте новое значение
    
var string: String = "watermelon"

for i in string {
    switch i {
    case "a":
        string = string.replacingOccurrences(of: String("a"), with: "A")
    case "e":
        string = string.replacingOccurrences(of: String("e"), with: "E")
    case "o":
        string = string.replacingOccurrences(of: String("o"), with: "O")
    default:
        break
    }
}
    
print(string)
    
// - объявите произвольное значение типа Int и напишите switch, который будет сравнивать это значение с несколькими range.

let someNumber: Int = 18
    
switch someNumber {
case 1..<7:
    print("🐶")
case 7...12:
    print("🐱")
case 13..<19:
    print("🐼")
case 19...24:
    print("🦁")
default:
    print("🐵")
}
    
// - объявите tuple с двумя значениями, напиши switch для сравнения значений tuple
    
let somePerson: (String, Int) = ("Stephen", 35)
    
switch somePerson {
case ("Chris", 38):
    print("1")
case ("Paul", 34):
    print("2")
case ("Andre", 40):
    print("3")
case ("Stepen", 35):
    print("4")
case ("Stephen", 36):
    print("5")
case ("Stephen", 35):
    print("🏀")
    fallthrough
case ("Kobe", 24):
    print("🐍")
default:
    print("Error")
}
        
/*
 Напишите программу для университета. У нас есть несколько студентов, пусть будет 3. Каждый студент посетил 5 курсов и имеет бал по этим курсам, укажите название и средний бал за каждый из этих курсов. Вычислите средний бал студента (в сумме всех курсов) и составьте рейтинг лучших студентов университета. Рейтинг с указанием студентов и их средних баллов выведите в консоль в порядке убывания (от лучшего студента к худшему).*/
    
let devinGrade: [String : Double] = ["History": 4.4, "English": 4.6, "Geography": 5.0, "Science": 4.2, "Maths": 4.5]
let kevinGrade: [String : Double] = ["History": 4.0, "English": 4.9, "Geography": 4.6, "Science": 4.3, "Maths": 4.4]
let bradleyGrade: [String : Double] = ["History": 4.8, "English": 4.7, "Geography": 4.5, "Science": 4.8, "Maths": 4.9]

for (subject, grade) in devinGrade {
    print("Devin's \(subject) grade: \(grade)")
}
var sumDevinGrade = 0.0
var countDevinCourse = devinGrade.count
for (key, value) in devinGrade {
    sumDevinGrade += value
}
    
let averageGradeDevin = sumDevinGrade / Double(countDevinCourse)
print("Devin's average grade: \(averageGradeDevin)")

for (subject, grade) in kevinGrade {
    print("Kevin's \(subject) grade: \(grade)")
}
var sumKevinGrade = 0.0
var countKevinCourse = kevinGrade.count
for (key, value) in kevinGrade {
    sumKevinGrade += value
}

let averageGradeKevin = sumKevinGrade / Double(countKevinCourse)
print("Kevin's average grade: \(averageGradeKevin)")

for (subject, grade) in bradleyGrade {
    print("Bradley's \(subject) grade: \(grade)")
}

var sumBradleyGrade = 0.0
var countBradleyCourse = bradleyGrade.count
for (key, value) in bradleyGrade {
    sumBradleyGrade += value
}

let averageGradeBradley = sumBradleyGrade / Double(countBradleyCourse)
print("Bradley's average grade: \(averageGradeBradley)")

var averageStudentsGrade: [String: Double] = [:]
averageStudentsGrade["Devin"] = averageGradeDevin
averageStudentsGrade["Kevin"] = averageGradeKevin
averageStudentsGrade["Bradley"] = averageGradeBradley

print(averageStudentsGrade)


for (key, value) in averageStudentsGrade {
  
}
let sortedValues = averageStudentsGrade.sorted { $0.value > $1.value }

print(sortedValues)


/*
 TODO: - ❓ К изучению:
 - Выучить синтаксис для всех statements and loops
 - Знать назначение для continue, break, fallthrow, return, throw
 */
