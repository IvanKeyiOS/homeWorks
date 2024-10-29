import UIKit


// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 // - проинициализируйте два пустых массива foodArray and drinkArray разными способами
 
var foodArray: [String] = []
var drinkArray: [String] = Array()

 // - присвойте первому массиву стринг значения - названия продуктов (минимум 5)

foodArray = ["Butter", "Oranges", "Banana", "Apple", "Lemon"]

 // - присвойте второму массиву названия напитков (минимум 5)

drinkArray = ["Milk", "Juice", "Water", "Wine", "Cola", "Beer"]

 // - добавьте в конец foodArray еще одно значение
 
foodArray.append("Fish")

 // - добавьте в середину drinkArray еще одно значение

drinkArray.insert("Champagne", at: 3)
 
 // - создайте третий массив shoppingList, который должен включать в себя все значения из foodArray and drinkArray
 
var shoppingListArray: [String] = foodArray + drinkArray

 // - распечатайте в консоль название продуктов и напитков из shoppingList и общее количество продуктов в shoppingList.

for item in shoppingListArray {
    print(item)
}

print(shoppingListArray.count)

 // - удалите первое и последнее значение, значение по индексу 2 из shoppingList

shoppingListArray.removeFirst()
shoppingListArray.removeLast()
shoppingListArray.remove(at: 2)
print(shoppingListArray)

 // - объявите словарь priceList, в котором ключами будут названия продуктов, а значениями цены для этих продуктов (цены с дробной частью)

var priceListDictionary: [String : Double] = ["Oranges" : 6.99, "Banana" : 5.99, "Lemon" : 9.98, "Fish" : 36.45, "Milk" : 3.98, "Juice" : 5.18, "Water" : 1.53, "Champagne" : 19.9, "Wine" : 36.6, "Cola" : 4.98]

 // - добавьте и удалите несколько значений из словаря.

priceListDictionary.removeValue(forKey: "Champagne")
priceListDictionary["Wine"] = nil
priceListDictionary.removeValue(forKey: "Cola")

 // - распечатайте в консоль название и стоимость всех продуктов из словаря

for (key, value) in priceListDictionary {
    print("\(key) : \(value)")
}
 // - объявите два сета со значениями одного типа.

let numbersSetOne: Set<Int> = [1, 2, 3, 4, 5, 6, 7]
let numbersSetTwo: Set<Int> = [5, 6, 7, 8, 9, 10, 11]

 // - примените к вышеобъявленным сетами операции symmetricDifference, union, intersection, substracting, isSubset(of:), isSuperset(of:)

let symmetricDifferenceSet = numbersSetOne.symmetricDifference(numbersSetTwo)
print(symmetricDifferenceSet)

let unionSet = numbersSetOne.union(numbersSetTwo)
print(unionSet)

let intersectionSet = numbersSetOne.intersection(numbersSetTwo)
print(intersectionSet)

let subtractSet = numbersSetTwo.subtracting(numbersSetOne)
print(subtractSet)

let isSubSet = numbersSetOne.isSubset(of: numbersSetTwo)
print(isSubSet)

let isSetSub = numbersSetTwo.isSubset(of: numbersSetOne)
print(isSetSub)

let isSuperset = numbersSetOne.isSuperset(of: numbersSetTwo)
print(isSuperset)

let isSuperSet = numbersSetTwo.isSuperset(of: numbersSetOne)
print(isSuperSet)

// MARK: - 🏠 Готовим ужин.
/*
 Вам нужно приготовить ужин из 3 блюд - салат, главное блюдо и дессерт. Для каждого блюда требуется определенный набор ингридиетов. Некоторые из этих ингредиентов уже есть в вашем холодильнике. Определите, какие ингридиенты вам необходимо докупить.
 
Внимание! Здесь мы работаем только с названиями ингридиетов, без учета их количества. Т.е. если вам нужны яйца в двух блюдах, в списке для покупок укажите их только один раз.
 
Используйте коллекции для обозначения списка ингридиетов. Для каждого блюда будет свой список ингридиентов, вводим значения. Так же отдельные списки для ингридиетов которые у вас есть (вводим значение) и для ингридиетов, которые нужно купить (вычисляем на основе того, что нужно и того, что есть).
 
 Подумайте, какой тип коллекций лучше всего подходит для решения задачи.
*/

var salad: Set<String> = Set()
var mainCourse: Set<String> = Set()
var dessert: Set<String> = Set()

var thereIsInTheFridge: Set<String> = Set()
var needToBuy: Set<String> = Set()

salad = ["Tomato", "Cucumber", "Onion", "Oil"]
mainCourse = ["Potatoes", "Chicken"]
dessert = ["Apple", "Lemon", "Sugar", "Salt", "Butter", "Eggs"]

thereIsInTheFridge = ["Apple", "Lemon", "Sugar", "Salt", "Butter", "Eggs", "Tomato", "Cucumber", "Oil", "Chicken"]
let needToBuyForSalad = salad.subtracting(thereIsInTheFridge)
let needToBuyForMainCourse = mainCourse.subtracting(thereIsInTheFridge)
let needToButForDessert = dessert.subtracting(thereIsInTheFridge)

needToBuy = needToBuyForSalad.union(needToBuyForMainCourse).union(needToButForDessert)
print(needToBuy)
/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Чем отличаются друг от друга array, set and dictionary?
 - Какие операции можно с ними выполнять?
 */
