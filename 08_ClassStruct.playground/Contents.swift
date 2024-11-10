import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
/*
 Давайте представим, что у вас компания, сдающая недвижимость в аренду.
 
 Создайте структуру House.
 Добавьте свойства: адрес, площадь, количество комнат, количество туалетных комнат, наличие бассейна, стоимость аренды в месяц.
 Создайте экземпляр структуры.
 Объявите еще одну константу и присвойте ей уже созданный экземпляр структуры.
 Измените во втором экземпляре стоимость аренды. Обратите внимание на ошибку, которую выдаст Xcode. Исправьте ее.
 Распечатайте стоимость аренды для обоих экземпляров.
 Изменилось ли значение для первого экзепляра?
 */
 
struct House {
    let adress: String = "Repina"
    let square: Double = 77.5
    let numberOfRooms: Int = 3
    let numberOfBathRooms: Int = 2
    let isTherePool: Bool = false
    var howMuchIsPerMonth: Int = 3550
}

let house: House = House()
var newHouse: House = House()
newHouse.howMuchIsPerMonth = 3000

print(house.howMuchIsPerMonth)
print(newHouse.howMuchIsPerMonth)

let isChangeValueForTheFirstHouse: Bool = false

/*
 Создайте класс Apartment.
 Добавьте такие же свойства (представим, что у нас встречаются варианты с бассейном 😁)
 Создайте экземпляр класса.
 Объявите еще одну константу и присвойте ей уже созданный экземпляр класса.
 Измените во втором экземпляре стоимость аренды. Обратите внимание на отсутсвие ошибки!
 Распечатайте стоимость аренды для обоих экземпляров.
 Изменилось ли значение для первого экзепляра?
 
 Найдите разницу между использованием классов и структур.
 
 Выведите в консоль информацию, ссылаются ли 2 переменные класса на один и тот же объект или на разные.
 */

class Apartment {
    let adress: String
    let square: Double
    let numberOfRooms: Int
    let numberOfBathRooms: Int
    let isTherePool: Bool
    var howMuchIsPerMonth: Int
    
    init(adress: String, square: Double, numberOfRooms: Int, numberOfBathRooms: Int, isTherePool: Bool, howMuchIsPerMonth: Int) {
        self.adress = adress
        self.square = square
        self.numberOfRooms = numberOfRooms
        self.numberOfBathRooms = numberOfBathRooms
        self.isTherePool = isTherePool
        self.howMuchIsPerMonth = howMuchIsPerMonth
    }
}

let apartment: Apartment = Apartment(adress: "Repina",
                                     square: 77.5,
                                     numberOfRooms: 3,
                                     numberOfBathRooms: 2,
                                     isTherePool: true,
                                     howMuchIsPerMonth: 9876)

let newApartment: Apartment = apartment
newApartment.howMuchIsPerMonth = 5432
var anotherApartment: Apartment = apartment

print(apartment.howMuchIsPerMonth)
print(newApartment.howMuchIsPerMonth)

let isChangeValueForTheFirstApartment: Bool = true

print("В структурах значение копируется каждый раз при присваивании их новой переменной, или при передаче функции, в классах, когда создается экземпляр класса и значение присваиваем его переменной, переменная содержит ссылку на объект класса, а не сам объект.")

print(anotherApartment !== apartment)
print(newApartment === apartment)

/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Для чего нужны классы и структуры?
 - Что общего между классами и структурами?
 - Чем отличаются классы от структур?
 - Что такое value и reference types?
 */

