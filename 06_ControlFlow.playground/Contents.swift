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
print("=======================================")
// - объявите строку произвольного значения и используя switch statement сделайте все гласные в строке заглавными. Распечатайте новое значение

let string: String = "Hello there"

switch string {
case "Swift":
    print("SwIft")
case "WOrld":
    print("World")
case "Hello there":
    print("HEllO thErE")
default:
    print("ErrOr")
}
print("=======================================")
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
print("=======================================")
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
print("=======================================")
/*
 Напишите программу для университета. У нас есть несколько студентов, пусть будет 3. Каждый студент посетил 5 курсов и имеет бал по этим курсам, укажите название и средний бал за каждый из этих курсов. Вычислите средний бал студента (в сумме всех курсов) и составьте рейтинг лучших студентов университета. Рейтинг с указанием студентов и их средних баллов выведите в консоль в порядке убывания (от лучшего студента к худшему).*/

let devinGrade: [String : Double] = ["History": 4.4, "English": 4.6, "Geography": 5.0, "Science": 4.2, "Maths": 4.5]
let kevinGrade: [String : Double] = ["History": 4.0, "English": 4.9, "Geography": 4.6, "Science": 4.3, "Maths": 4.4]
let bradleyGrade: [String : Double] = ["History": 4.8, "English": 4.7, "Geography": 4.5, "Science": 4.8, "Maths": 4.9]

for (subject, grade) in devinGrade {
    print("Devin's \(subject) grade: \(grade)")
}
print("=======================================")

for (subject, grade) in kevinGrade {
    print("Kevin's \(subject) grade: \(grade)")
}
print("=======================================")

for (subject, grade) in bradleyGrade {
    print("Bradley's \(subject) grade: \(grade)")
}

print("=======================================")

func averageGrade(a: Double, b: Double, c: Double, d: Double, e: Double) -> Double {
    return (a + b + c + d + e) / 5
}

let devinScore: Double = averageGrade(a: devinGrade["History"] ?? 0.0, b: devinGrade["English"] ?? 0.0, c: devinGrade["Geography"] ?? 0.0, d: devinGrade["Science"] ?? 0.0, e: devinGrade["Maths"] ?? 0.0)
print("Devin's average grade: \(devinScore)")

let kevinScore: Double = averageGrade(a: kevinGrade["History"] ?? 0.0, b: kevinGrade["English"] ?? 0.0, c: kevinGrade["Geography"] ?? 0.0, d: kevinGrade["Science"] ?? 0.0, e: kevinGrade["Maths"] ?? 0.0)
print("Kevin's average grade: \(kevinScore)")

let bradleyScore: Double = averageGrade(a: bradleyGrade["History"] ?? 0.0, b: bradleyGrade["English"] ?? 0.0, c: bradleyGrade["Geography"] ?? 0.0, d: bradleyGrade["Science"] ?? 0.0, e: bradleyGrade["Maths"] ?? 0.0)
print("Bradley's average grade: \(bradleyScore)")

print("=======================================")

if devinScore > kevinScore && devinScore > bradleyScore && kevinScore > bradleyScore {
    print("Devin \(devinScore)")
    print("Kevin \(kevinScore)")
    print("Bradley \(bradleyScore)")
} else {
    if kevinScore > devinScore && kevinScore > bradleyScore && devinScore > bradleyScore {
        print("Kevin \(kevinScore)")
        print("Devin \(devinScore)")
        print("Bradley \(bradleyScore)")
    } else {
        if bradleyScore > kevinScore && bradleyScore > devinScore && kevinScore > devinScore {
            print("Bradley \(bradleyScore)")
            print("Kevin \(kevinScore)")
            print("Devin \(devinScore)")
        } else {
            if devinScore > kevinScore && devinScore > bradleyScore && bradleyScore > kevinScore {
                print("Devin \(devinScore)")
                print("Bradley \(bradleyScore)")
                print("Kevin \(kevinScore)")
            } else {
                if kevinScore > devinScore && kevinScore > bradleyScore && bradleyScore > devinScore {
                    print("Kevin \(kevinScore)")
                    print("Bradley \(bradleyScore)")
                    print("Devin \(devinScore)")
                } else {
                    if bradleyScore > kevinScore && bradleyScore > devinScore && devinScore > kevinScore {
                        print("Bradley \(bradleyScore)")
                        print("Devin \(devinScore)")
                        print("Kevin \(kevinScore)")
                        
                    }
                }
            }
        }
    }
}
/*
 TODO: - ❓ К изучению:
 - Выучить синтаксис для всех statements and loops
 - Знать назначение для continue, break, fallthrow, return, throw
 */
