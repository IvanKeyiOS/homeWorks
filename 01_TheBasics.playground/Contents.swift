import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - 🧑‍💻 Описать страну, в которой вы сейчас находитесь, используя:
 - константы для неизменных характеристик
 - переменные для изменяемых
 - опционалы для необязательно присутствующих
 - изученные типы данных хотя бы по одному разу: Int, UInt, Float, Double, Bool, String.
 - type aliasses, tuples.
 
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Что такое опционал?
 - Назовите способы разворачивания опционала?
 - Какая разница между Float и Double? Что рекомендуется использовать?
 - Какая разница между UInt и Int? Что рекомендуется использовать?
 
 */

/*
 TODO: - 🏆 Ваше решение здесь:
 */

typealias MyCity = (String, String)

let myCity: MyCity = ("Warsaw", "Warsaw")
let (myCityName, myProvinceName) = myCity
let myCountry: String = "Poland"
var myZipCode: String = "03-984"

var myCityArea: Float = 517.2
var myCityPopulation: Int = 1765000
var myCityCountOfAreas: UInt = 18

var MyCityMinTemperature: Float = -28
var MyCityMaxTemperature: Float = 38

var isMyCitySafe: Bool? = true

/*
 MARK: - 📃 Пример выполнения домашнего задания.
 Описание города
 */

typealias City = (String, String)

let city: City = ("Cordoba", "Cordoba")
let (cityName, provinceName) = city
let country: String = "Argentina"
let zipCode: UInt = 5000

var area: UInt = 576
var population: UInt = 1329604
var countOfAreas: UInt

var minTemperature: Float = -7.1
var maxTemperature: Float = 43.1

var isSafeCity: Bool? = true // Вы можете не знать, а можете и знать ответ на этот вопрос
