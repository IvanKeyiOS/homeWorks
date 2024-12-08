import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
// Напишите generic функцию, которая принимает массив любого типа и возвращает первый элемент.

func acceptArray<SomeType>(elements: [SomeType]) -> SomeType? {
    return  elements.first
}

let doubleArray = [1.9, 2.4, 2.5, 3.0, 3.3, 2.4, 1.6, 2.0, 5.0, 7.0, 6.3]
acceptArray(elements: doubleArray)

// Создайте функцию printArray, которая принимает массив любого типа и печатает каждый элемент массива на новой строке.

func printArray<SomeTypeForPrint>(items: [SomeTypeForPrint]) {
    for item in items {
        print(item)
    }
}

printArray(items: doubleArray)

// Напишите функцию findMax, которая принимает массив любого типа, соответствующего протоколу Comparable и возвращает максимальный элемент массива. Если массив пустой, функция должна возвращать nil.

func findMax<SomeTypeForFindMax: Comparable>(someElements: [SomeTypeForFindMax]) -> SomeTypeForFindMax? {
    return someElements.max() ?? nil
}

findMax(someElements: doubleArray)

// Extra task*
// Создайте generic протокол CompareProtocol, который объявляет функцию для сравнения двух элементов одного и того же типа. Метод должен возвращать Bool value как результат сравнения двух объектов. Объявите структуру или класс, подчините протоколу, добавьте реализацию. Создайте массив элементов и отсортируйте его, используя ваш метод.

protocol CompareProtocol {
    func compareTwoElements<SomeTypeForCompare: Comparable>(someFirstElement: SomeTypeForCompare, someSecondElement: SomeTypeForCompare) -> Bool
}

class ForCompare: CompareProtocol {
    
    func compareTwoElements<SomeTypeForCompare>(someFirstElement: SomeTypeForCompare, someSecondElement: SomeTypeForCompare) -> Bool where SomeTypeForCompare : Comparable {
        if someFirstElement > someSecondElement {
            return true
        } else {
            return false
        }
    }
}

let element = ForCompare()
element.compareTwoElements(someFirstElement: 33, someSecondElement: 43)

/*
 TODO: - ❓ Вопросы к изучению:
 - Зачем нужны дженерики?
 - Синтаксис объявления дженерик функции?
 - Как ограничить тип, который может быть использован в дженерик функции и дженерик типе?
 */

