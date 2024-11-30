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
Посчитайте общее количество забитых командой голов.+
*/
enum Position: String {
    case goalkeaper
    case defenseman
    case midfielder
    case striker
}

struct FootballPlayer {
    let name: String
    let surename: String
    let age: Int
    let goalsAmount: Int
    let position: Position
}

let firstPlayer: FootballPlayer = FootballPlayer(name: "Draymond", surename: "Green", age: 35, goalsAmount: 0, position: Position.goalkeaper)
let secondPlayer: FootballPlayer = FootballPlayer(name: "Stephen", surename: "Curry", age: 36, goalsAmount: 3, position: Position.defenseman)
let thirdPlayer: FootballPlayer = FootballPlayer(name: "Andre", surename: "Igudala", age: 39, goalsAmount: 7, position: Position.midfielder)
let fourthPlayer: FootballPlayer = FootballPlayer(name: "Klay", surename: "Thompson", age: 35, goalsAmount: 2, position: Position.defenseman)
let fifthPlayer: FootballPlayer = FootballPlayer(name: "Kevin", surename: "Durant", age: 38, goalsAmount: 15, position: Position.striker)

var bocaJuniors: [FootballPlayer] = []
bocaJuniors += [firstPlayer, secondPlayer, thirdPlayer, fourthPlayer, fifthPlayer]

func printDatePlayer(bocaJuniors: [FootballPlayer]) {
    bocaJuniors.enumerated().forEach { print("\($0) \($1)") }
}

printDatePlayer(bocaJuniors: bocaJuniors)

print("=============================================================================================================================")

let moreGoalsAmount: [FootballPlayer] = bocaJuniors.sorted { $0.goalsAmount > $1.goalsAmount }
moreGoalsAmount.forEach { print($0) }
print("=============================================================================================================================")
let sortSureName: [FootballPlayer] = bocaJuniors.sorted { (firstPlayer: FootballPlayer, secondPlayer: FootballPlayer) in
    if firstPlayer.surename == secondPlayer.surename {
        return firstPlayer.name < secondPlayer.name
    }
    return firstPlayer.surename < secondPlayer.surename
}

sortSureName.forEach { print($0) }
print("=============================================================================================================================")

func sortedArray(bocaJuniors: [FootballPlayer]) -> [[FootballPlayer]]  {
    
    let goalkeaperArray: [FootballPlayer] = bocaJuniors.filter { $0.position == Position.goalkeaper }
    let defensemanArray: [FootballPlayer] = bocaJuniors.filter { $0.position == Position.defenseman }
    let midfielderArray: [FootballPlayer] = bocaJuniors.filter { $0.position == Position.midfielder }
    let strikerArray: [FootballPlayer] = bocaJuniors.filter { $0.position == Position.striker }
    var arrayByArray: [[FootballPlayer]] = []
    arrayByArray.append(goalkeaperArray)
    arrayByArray.append(defensemanArray)
    arrayByArray.append(midfielderArray)
    arrayByArray.append(strikerArray)
  

    return arrayByArray
}
sortedArray(bocaJuniors: bocaJuniors)

print("=============================================================================================================================")

let goalsAmont: [Int] = bocaJuniors.map { ($0.goalsAmount) }
let overalGoalsAmount: Int = goalsAmont.reduce(0, + )
print(overalGoalsAmount)


/*
 TODO: - ❓ Вопросы к изучению:
 Повторите название и назначение всех изученных функций высшего порядка. Будьте готовы рассказать о каждой.
 */
