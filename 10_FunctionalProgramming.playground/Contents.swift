import UIKit

// MARK: - 🏠 Домашнее задание.

// TODO: - 🧑‍💻
/*
Создайте структуру футболист.
Добавьте свойства: имя, фамилия, возраст, количество голов, должность (нападающий, защитник, вратарь... - подумайте, каким типом данных будет это свойство).
Создайте несколько экземпляров типа футболист и заполните их данными.+
Добавьте все экземпляры в массив игроков - это будет футбольная команда.+
Напишите функцию, которая принимает массив игроков и печатает в консоль их данные. В строке перед данными каждого игрока должен печататься его порядковый номер.+
Отсортируйте массив по количеству забитых голов по убыванию и распечатайте в новом порядке.+
Отсортируйте массив по фамилии игроков (по возрастанию). Если фамилии одинаковые, сравнивайте по имени. Распечатайте.+
Напишите функцию, которая отсортирует массив на разные массивы по должностям (т.е. нападающие в отдельный и т.д.)+
Посчитайте общее количество забитых командой голов.
*/

struct FootballPlayer {
    let name: String
    let surename: String
    let age: Int
    let goalsAmount: Int
    let position: String
}

let firstPlayer: FootballPlayer = FootballPlayer(name: "Draymond", surename: "Green", age: 35, goalsAmount: 0, position: "Goalkeaper")
let secondPlayer: FootballPlayer = FootballPlayer(name: "Stephen", surename: "Curry", age: 36, goalsAmount: 3, position: "Defenseman")
let thirdPlayer: FootballPlayer = FootballPlayer(name: "Andre", surename: "Igudala", age: 39, goalsAmount: 7, position: "Midfielder")
let fourthPlayer: FootballPlayer = FootballPlayer(name: "Klay", surename: "Thompson", age: 35, goalsAmount: 2, position: "Defenseman")
let fifthPlayer: FootballPlayer = FootballPlayer(name: "Kevin", surename: "Durant", age: 38, goalsAmount: 15, position: "Striker")

var bocaJuniors: [FootballPlayer] = []
bocaJuniors += [firstPlayer, secondPlayer, thirdPlayer, fourthPlayer, fifthPlayer]

bocaJuniors.enumerated().forEach { print("\($0) \($1)") }
print("=============================================================================================================================")

let moreGoalsAmount: [FootballPlayer] = bocaJuniors.sorted { $0.goalsAmount > $1.goalsAmount }
moreGoalsAmount.forEach { print($0) }
print("=============================================================================================================================")

let sortSureName: [FootballPlayer] = bocaJuniors.sorted { $0.surename < $1.surename }
sortSureName.forEach { print($0) }
print("=============================================================================================================================")

let goalkeaper: [FootballPlayer] = bocaJuniors.filter { $0.position == "Goalkeaper" }
print(goalkeaper)
print("=============================================================================================================================")

let defenseman: [FootballPlayer] = bocaJuniors.filter { $0.position == "Defenseman" }
print(defenseman)
print("=============================================================================================================================")

let midfielder: [FootballPlayer] = bocaJuniors.filter { $0.position == "Midfielder" }
print(midfielder)
print("=============================================================================================================================")

let striker: [FootballPlayer] = bocaJuniors.filter { $0.position == "Striker" }
print(striker)
print("=============================================================================================================================")

let goalsAmont: [Int] = bocaJuniors.map { ($0.goalsAmount) }
let overalGoalsAmount: Int = goalsAmont.reduce(0, { $0 + $1 } )
print(overalGoalsAmount)

/*
 TODO: - ❓ Вопросы к изучению:
 Повторите название и назначение всех изученных функций высшего порядка. Будьте готовы рассказать о каждой.
 */

