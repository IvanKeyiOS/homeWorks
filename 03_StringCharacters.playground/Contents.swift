import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 */
 // - проинициализируйте пустую строку let emptyString с помощью строкового литерала
let emptyString: String = ""
 
 // - проинициализируйте пустую строку var message с помощью инициализатора
var message: String = String()
 
 // - проинициализируйте многострочную константу
let manyString: String = """
"""
 
 // - используя интерполяцию, создайте строку "The images were loaded", в которой вместо "The" подставьте количество картинок из переменной count (объявить)
var count: String = "Seventh"

var stringWithInterpolation: String = "\(count) images were loaded"
 
 // - используя конкатенацию добавьте message новое значение из предыдущего пункта
message += count
 
 
 // - распечатайте в консоль количество символов в message если строка не пустая, если строка пустая - ничего делать не надо
//message = "Swift"
print(message.count)

print("=============================================================================================================================================================")
 // - распечатайте в консоль следующие текст (три строчки с прямой речью). Строки должны начинаться с -, как в примере. Отступ для второй строки должен быть сохранен. Чтобы вставить смайлики, используйте юникод. Весь текст должен представлять собой одну константу или переменную, которую и нужно распечатать. Для формирования String можно использовать конкатенацию и/или интерполяцию.
/*
    - "Hello, how are you?" - asked he.
        - "I'm nice, thank you 😊. And you?" - answered Mary.
    - "Not so good 😒"
*/
let firstString: String = "- \"Hello, how are you?\""
let askString: String = "- asked he. \n"
let secondString: String = "\t - \"I'm nice, thank you \u{1F60A}. And you?\""
let asnswerString: String = "- answered Mary."
let thirdString: String = "\n- \"Not so good \u{1F612}\""
let spaceString: String = " "
var totalString: String = """
 """
totalString = firstString + spaceString + spaceString + askString + spaceString + secondString + spaceString + asnswerString + thirdString
print(totalString)

// MARK: - Task with * 🧐
/* Для выполнения этой задачи вам потребуется хорошо изучить документацию по String.

 Для многострочного текста из предыдущего задания:
 - подсчитайте количество слов в тексте
 - подсчитайте количество предложений в тексте
 - замените все глассные буквы на *

 */
print("===========================================================================================================================================================")

let words = totalString.components(separatedBy: CharacterSet.whitespacesAndNewlines.union(.punctuationCharacters).union(.symbols))
let filteredWords = words.filter { !$0.isEmpty }
let howManyWordsInText = filteredWords.count

print("Количество слов в тексте: \(howManyWordsInText)")
print("Слова в тексте: \(filteredWords)")

print("=============================================================================================================================================================")

let sentences = totalString.components(separatedBy: CharacterSet(charactersIn: ".!?"))
let filteredSentences = sentences.filter{ sentence in !sentence.trimmingCharacters(in: .whitespaces).isEmpty }
let sentenceCount = filteredSentences.count

print("Количество предложений: \(sentenceCount)")
print("Предложения в тексте: \(filteredSentences)")


//Через CharacterSet и redex выражения.
//От пробелов (\n) можно избавить с помощью .whitespaces, для переносов (\t) тоже есть свойство, кажется .newlines

print("=============================================================================================================================================================")
/* These letters are vowels in English: A, E, I, O and U (and sometimes W and Y) It is said that Y is "sometimes" a vowel because it represents both vowel and consonant sounds. In the words cry, sky, fly, my and why, the letter Y represents the vowel sound /aɪ/.
*/

let text = totalString
let vowelLetter = "aieouywAEIOUYW"
var updatedText = totalString

for vowel in vowelLetter {
    updatedText = updatedText.replacingOccurrences(of: String(vowel), with: "*")
}

print(updatedText)

// TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
/*
 - Что такое конкатенация?
 - Что такое интерполяция?
 - Что представляет из себя тип Character?
 - Что представляет из себя тип String?
 */
print("=============================================================================================================================================================")
