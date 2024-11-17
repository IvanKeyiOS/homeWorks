import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - ❓ Вопросы для самопроверки:
 - Какие бывают операторы?
 - Для чего служит тернарный оператор?
 - Какие операторы существуют для объявления range?
 - Какие пять способов разворачивания опционалов вы знаете?
 
 
 
 TODO: - 1. Нечетные числа
 - создать кортеж с произвольными числами, не менее трех значений в кортеже
 - распечатать в консоль только четные числа. Подумайте, чем четные числа отличаются от нечетных и какой оператор может помочь нам выявить различие.
 - решение должно работать для любых чисел, т.е. если вы несколько раз измените ваши числа в кортеже, то каждый раз задача должна выполняться.
 
 TODO: - 2. Нечетные числа
 - создать период произвольного значения
 - распечатать в консоль только четные числа с отрицательным значением
 
 TODO: - 3. Игра в Кости*
 Два игрока. Они по очереди бросают два кубика, на гранях которых числа от 1 до 6. Выпавшее число защитывается игроку, который бросал кости. У каждого из игроков 7 попыток. Используйте random для получения случайного числа в заданном периоде (почитайте про random https://developer.apple.com/documentation/swift/int/random(in:)-8zzqh/ )
 При каждом броске костей распечатайте в консоль имя игрока, сколько очков он получает в текущей попытке, сколько очком всего он накопил. По истечении 7 бросков для каждого из игроков, определите победителя и распечатайте эту информацию в консоль.
 Используйте знания, полученные и в предыдущих уроках. Найдите самое короткое решение!

 TODO: - 🏆 Ваше решение ⬇️:
 */

// MARK: - Exercise 1. Нечетные числа
/*
- создать кортеж с произвольными числами, не менее трех значений в кортеже
- распечатать в консоль только четные числа. Подумайте, чем четные числа отличаются от нечетных и какой оператор может помочь нам выявить различие.
- решение должно работать для любых чисел, т.е. если вы несколько раз измените ваши числа в кортеже, то каждый раз задача должна выполняться.
*/

var mySomeTuple: (Int, Int, Int, Int, Int) = (1384134304304233, 2, 3, 4, 5)

if mySomeTuple.0 % 2 == 0 {
    print(mySomeTuple.0)
}

if mySomeTuple.1 % 2 == 0 {
    print(mySomeTuple.1)
}
    
if mySomeTuple.2 % 2 == 0 {
    print(mySomeTuple.2)
}

if mySomeTuple.3 % 2 == 0 {
    print(mySomeTuple.3)
}

if mySomeTuple.4 % 2 == 0 {
    print(mySomeTuple.4)
}

print("=========================================================================================================================================")
// MARK: - Exercise 2. Нечетные числа

/*
- создать период произвольного значения
- распечатать в консоль только четные числа с отрицательным значением
*/

var range = -10...10
for number in range {
    if number % 2 == 0 && number < 0 {
        print(number)
    } 
}
print("=========================================================================================================================================")
// MARK: - Exercise 3. Игра в Кости*

/*
 Два игрока. Они по очереди бросают два кубика, на гранях которых числа от 1 до 6. Выпавшее число защитывается игроку, который бросал кости. У каждого из игроков 7 попыток. Используйте random для получения случайного числа в заданном периоде (почитайте про random https://developer.apple.com/documentation/swift/int/random(in:)-8zzqh/ )
 При каждом броске костей распечатайте в консоль имя игрока, сколько очков он получает в текущей попытке, сколько очком всего он накопил. По истечении 7 бросков для каждого из игроков, определите победителя и распечатайте эту информацию в консоль.
 Используйте знания, полученные и в предыдущих уроках. Найдите самое короткое решение!
*/
let players: (String, String) = ("Alex", "John")
var alexTotalPoints: Int = 0
var johnTotalPoints: Int = 0
var alexFirstThrow: Int = Int.random(in: 2...12)
var alexSecondThrow: Int = Int.random(in: 2...12)
var alexThirdThrow: Int = Int.random(in: 2...12)
var alexFourthThrow: Int = Int.random(in: 2...12)
var alexFifthThrow: Int = Int.random(in: 2...12)
var alexSixthThrow: Int = Int.random(in: 2...12)
var alexSeventhThrow: Int = Int.random(in: 2...12)

var johnFirstThrow: Int = Int.random(in: 2...12)
var johnSecondThrow: Int = Int.random(in: 2...12)
var johnThirdThrow: Int = Int.random(in: 2...12)
var johnFourthThrow: Int = Int.random(in: 2...12)
var johnFifthThrow: Int = Int.random(in: 2...12)
var johnSixthThrow: Int = Int.random(in: 2...12)
var johnSeventhThrow: Int = Int.random(in: 2...12)

for score in 1...2 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexFirstThrow, "/ his overall points -", alexFirstThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnFirstThrow,"/ his overall points -", johnFirstThrow)
    }
}

for score in 3...4 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexSecondThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnSecondThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow)
    }
}

for score in 5...6 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexThirdThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow + alexThirdThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnThirdThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow + johnThirdThrow)
    }
}

for score in 7...8 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexFourthThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow + alexThirdThrow + alexFourthThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnFourthThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow + johnThirdThrow + johnFourthThrow)
    }
}

for score in 9...10 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexFifthThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow + alexThirdThrow + alexFourthThrow + alexFifthThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnFifthThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow + johnThirdThrow + johnFourthThrow + johnFifthThrow)
    }
}

for score in 11...12 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexSixthThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow + alexThirdThrow + alexFourthThrow + alexFifthThrow + alexSixthThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnSixthThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow + johnThirdThrow + johnFourthThrow + johnFifthThrow + johnSixthThrow)
    }
}

for score in 13...14 {
    if score % 2 != 0 {
        print("Throw #", score - score / 2, "by", players.0,"his current points -", alexSeventhThrow, "/ his overall points -", alexFirstThrow + alexSecondThrow + alexThirdThrow + alexFourthThrow + alexFifthThrow + alexSixthThrow + alexSeventhThrow)
    } else {
        print("Throw #", score - score / 2, "by", players.1,"his current points -", johnSeventhThrow,"/ his overall points -", johnFirstThrow + johnSecondThrow + johnThirdThrow + johnFourthThrow + johnFifthThrow + johnSixthThrow + johnSeventhThrow)
    }
}

alexTotalPoints = alexFirstThrow + alexSecondThrow + alexThirdThrow + alexFourthThrow + alexFifthThrow + alexSixthThrow + alexSeventhThrow
johnTotalPoints = johnFirstThrow + johnSecondThrow + johnThirdThrow + johnFourthThrow + johnFifthThrow + johnSixthThrow + johnSeventhThrow

if alexTotalPoints > johnTotalPoints && alexTotalPoints != johnTotalPoints {
    print("Alex winner")
} else {
    print("John winner")
}
