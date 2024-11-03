import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 // - создайте enumeration с разными направлениями музыки, а-ля pop, rock, classic и т.д.
 
enum Music {
    case pop
    case rock
    case classic
    case jaz
    case trance
    case punk
}
 
 // - объявите константу myFavoriteStyle и присвойте ей любое значение из enumeration
 
let myFavoriteStyle = Music.rock
 
 // - распечатайте каждое значение enumeration, используя итерацию
 

enum NewMusic: CaseIterable {
    case pop
    case rock
    case classic
    case jaz
    case trance
    case punk
}

let musicArray = NewMusic.allCases

for music in musicArray {
    print(music)
}
 
 // - добавьте в enumeration raw value типа String, которое будет являться именем исполнителя данного жанра
 
enum SingerMusic: String {
    case pop = "Beyonce"
    case rock = "The Days Grace"
    case classic = "Bach"
    case jaz = "Diana Krall"
    case trance = "Tiesto"
    case punk = "The Clash"
}

 // - проинициализируйте константу singerStyle, используя rawValue
 
let singerStyle = SingerMusic(rawValue: "Tiesto")
print(singerStyle ?? "Gaga")

 // - напишите switch statement, который будет сравнивать singerStyle с cases для каждого направления музыки и печатать название какой-нибудь песни соответствующего жанра

switch singerStyle {
case .pop:
    print("Barby girl")
case .rock:
    print("Still loving you")
case .classic:
    print("Piano sonata number 16")
case .jaz:
    print("Ithaka")
case .trance:
    print("The Motto")
case .punk:
    print("The Passanger")
default:
    print("Another song")
}

 // - Представте, что мы работаем над приложением для заказа пиццы. Создайте enumeration содержащий три разных размера для пиццы small, medium, big. Это должен быть enum с associated values, которые будут использованы для указания дополнительных ингридиентов: для small - один, для medium - два, для big - три ингридиента.

enum PizzaSize {
    case small(ingredient: String)
    case medium(firstIngredient: String, secondIngredient: String)
    case big(firstIngredient: String, secondIngredient: String, thirdIngredient: String)
}

 // - Создайте три константы, которым присвойте три разных значения из enum с пиццой.

let orderWithOneIngredient  = PizzaSize.small(ingredient: "Cheese")
let orderWithTwoIngredient: PizzaSize = .medium(firstIngredient: "Ham", secondIngredient: "Onion")
let orderWithThreeIngredient: PizzaSize = .big(firstIngredient: "Pepper", secondIngredient: "Spinach", thirdIngredient: "Beef")

 // - Напишите switch, который будет выводить в консоль сообщение о размере заказанной пиццы и дополнительных ингредиентах. Что-то типа "Your order is - The big pizza with mashrooms, sheese, bacon".

switch orderWithThreeIngredient {
case .small(let ingredient):
    print("Your order is - The small pizza with \(ingredient)")
case .medium(let firstIngredient, let secondIngredient):
    print("Your order is - The medium pizza with \(firstIngredient), \(secondIngredient)")
case .big(let firstIngredient, let secondIngredient, let thirdIngredient):
    print("Your order is - The big pizza with \(firstIngredient), \(secondIngredient), \(thirdIngredient)")
}
 
/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Что такое enumerations?
 - Для чего нужен протокол CaseIterable?
 - Что такое Recursive Enumerations?
 */
