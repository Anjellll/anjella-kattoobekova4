//№1. Через readLine вводится любое количество слов
//После чего эти слова сортируются по количеству символов
//Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное


print("Введите слова")

var text: String = readLine()!
var word = ""
var minWord = ""
var maxWord = ""
var countSymbol = 0
var symbolMin = 100
var symbolMax = 0
var minString: [String] = []
var maxString: [String] = []

for i in text {
    if i == " " || i == "." || i == "," {
        if countSymbol < symbolMin {
            symbolMin = countSymbol
            countSymbol = 0
            minWord = "\(word),"
            word = ""
        }
        if countSymbol == symbolMin {
            countSymbol = 0
            minWord += "\(word),"
            word = ""
        }
        countSymbol = 0
        word = ""
        continue
      }
        else {
            word += "\(i)"
            countSymbol += 1
        }
    }
    if countSymbol < symbolMin {
        symbolMin = countSymbol
        countSymbol = 0
        minWord = "\(word),"
        word = ""
    }
    if countSymbol == symbolMin {
        countSymbol = 0
        minWord += "\(word),"
        word = ""
    }
    countSymbol = 0
    word = ""

    for i in text {
        if i == " " || i == "." || i == "," {
            if countSymbol > symbolMax {
                symbolMax = countSymbol
                countSymbol = 0
                maxWord = "\(word),"
                word = ""
            }
            if countSymbol == symbolMax {
                countSymbol = 0
                maxWord += "\(word),"
                word = ""
            }
            countSymbol = 0
            word = ""
            continue
        }
        else {
            word += "\(i)"
            countSymbol += 1
        }
    }
    if countSymbol > symbolMax {
        symbolMax = countSymbol
        countSymbol = 0
        maxWord = "\(word),"
        word = ""
        }
    if countSymbol == symbolMax{
        countSymbol = 0
        maxWord += "\(word),"
        word = ""
    }
    word = ""
    for i in minWord {
        if i == "," {
            minString.append(word)
            word = ""
            continue
        }
        word += "\(i)"
    }
    word = ""
    for i in maxWord {
        if i == "," {
            maxString.append(word)
            word = ""
            continue
        }
        word += "\(i)"
    }

print("Короткое слово(а) - \(minString)")
print("Длинное слово(а) -  \(maxString)")




//print ("Введите слова")
//var words: [String] = []
//var count = 4
//while let line = readLine(), count >= 0 {
//    print(count)
//    count -= 1
//    words.append(line)
//    let sortedArray = words.sorted{$0.count > $1.count}
//    print (sortedArray)
//}
//print (words)



//№2. Составить список из 20 контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено




let names: [String] = ["Alsu", "Andrey",  "Aizat", "Bema", "Sergey", "Aliya", "Bek", "Chynar", "Chika",  "Zina", "Katya", "Kerim",  "Sezim", "Chubak", "Beka",  "Nadya", "Cholpon", "Nelya",  "Saikal", "Nurik" ]

let sortedNames = names.sorted()
print(sortedNames)

print("")
var numbers: [Int] = [0707_11145, 0555_06569, 0777_7777, 0500_4444, 0222_5555, 0708_2222, 0555_4444, 0999_9999, 0705_4444, 0773_5555, 0775_4444, 0508_8888, 0555_6666, 0500_4444, 0707_9090, 0400_4422, 0222_4444, 0558_9999,0773_3000, 0709_2000 ]

for (index,item) in names.enumerated(){
    print("\(index + 1). \(item) - \(numbers[index]) ")
}

print("")



let newArray1 = names.filter{ $0.hasPrefix("A") }
let newArray2 = names.filter{ $0.hasPrefix("B") }
let newArray3 = names.filter{ $0.hasPrefix("C") }
let newArray4 = names.filter{ $0.hasPrefix("K") }
let newArray5 = names.filter{ $0.hasPrefix("N") }
let newArray6 = names.filter{ $0.hasPrefix("S") }
let newArray7 = names.filter{ $0.hasPrefix("Z") }


print(newArray1)
    print("В букве  А - \(newArray1.count) контакт/-ов")
print("")

print(newArray2)
    print("В букве  B -  \(newArray2.count) контакт/-ов")
print("")


print(newArray3)
    print("В букве  C -  \(newArray3.count) контакт/-ов")
print("")


print(newArray4)
    print("В букве  K - \(newArray4.count) контакт/-ов")
print("")


print(newArray5)
    print("В букве  N - \(newArray5.count) контакт/-ов")
print("")


print(newArray6)

    print("В букве  S -  \(newArray6.count) контакт/-ов")
print("")


print(newArray7)
    print("В букве  Z -  \(newArray7.count) контакт/-ов")
print("")





//№3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов
//В игре должно быть 5 раундов по 3 вопроса
//Так же должны быть несгораемые суммы
//Так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно

var questionsRound1: [String] = [" 3-планета от Солнца?", "Глубокий? океан", "Какой корабль затонул в 1912 году?"]
var answerRound1: [String] = ["Земля", "Тихий океан",  "Титаник",]

var questionsRound2: [String] = ["Сколько полос на флаге США?", "Самый высокий водопад?", "Кто является самым крупным животным на Земле?"]

var answerRound2: [String] = [ "13", "Анхель", "Синий кит",]

var questionsRound3: [String] = ["Какое животное живёт с иглами на коже?", "Сколько лапок у паука?", "Кто царь зверей?",]

var answerRound3: [String] = [ "Ёж", "8", "Лев",]

var questionsRound4: [String] = ["Какая птица не умеет летать?", "Какой национальный цветок Японии?", "Какая столица России?",]

var answerRound4: [String] = [ "Пингвин", "Сакура", "Россия",]

var questionsRound5: [String] = ["Как звали льва из Мадагаскара?", "Зелёный герой мультфильма, который живёт на болоте. Это?", "Как звали мальчика, который вызывал джина?",]

var answerRound5: [String] = [ "Алекс", "Шрек", "Алладин",]

var sum = 0
var round = 0

print(questionsRound1[0])
var answer = readLine()
if answer == answerRound1[0]{
    print(questionsRound1[1])
    var answer = readLine()
    if answer == answerRound1[1]{
        print(questionsRound1[2])
        let answer = readLine()
        if answer == answerRound1[2]{
            sum += 5000
            round += 1
            print(" конец 1-раунда")
            print(questionsRound2[0])
            var answer = readLine()
            if answer == answerRound2[0] {
                print(questionsRound2[1])
                var answer = readLine()
                if answer == answerRound2[1] {
                    print(questionsRound2[2])
                    var answer = readLine()
                    if answer == answerRound2[2]{
                        sum += 5000
                        round += 1
                        print("конец 2-раунда")
                        print(questionsRound3[0])
                        var answer = readLine()
                        if answer == answerRound3[0]{
                            print(questionsRound3[1])
                            var answer = readLine()
                            if answer == answerRound3[1]{
                                print(questionsRound3[2])
                                var answer = readLine()
                                if answer == answerRound3[2]{
                                    sum += 5000
                                    round += 1
                                    print("конец 3-раунда")
                                    print(questionsRound4[0])
                                    var answer = readLine()
                                    if answer == answerRound4[0]{
                                        print(questionsRound4[1])
                                        var answer = readLine()
                                        if answer == answerRound4[1]{
                                            print(questionsRound4[2])
                                            var answer = readLine()
                                            if answer == answerRound4[2]{
                                                sum += 5000
                                                round += 1
                                                print("конец 4-раунда")
                                                print(questionsRound5[0])
                                                var answer = readLine()
                                                if answer == answerRound5[0]{
                                                    print(questionsRound5[1])
                                                    var answer = readLine()
                                                    if answer == answerRound5[1]{
                                                        print(questionsRound5[2])
                                                        var answer = readLine()
                                                        if answer == answerRound5[2]{
                                                            sum += 5000
                                                            round += 1
                                                            print("конец 5-раунда")
                                                            print("Вы выиграли! \nВаш выигрыш - \(sum) c \nКоличества пройденных раундов - \(round)")
                                                     }
                                                        else {
                                                            print("Прaвильный ответ - \(answerRound5[2]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                                        }
                                                  }
                                                    else {
                                                        print("Прaвильный ответ - \(answerRound5[1]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                                    }
                                               }
                                                else {
                                                    print("Прaвильный ответ - \(answerRound5[0]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                                }
                                            }
                                            else {
                                                print("Прaвильный ответ - \(answerRound4[2]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                            }
                                        }
                                        else {
                                            print("Прaвильный ответ - \(answerRound4[1]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                        }
                                    }
                                    else {
                                        print("Прaвильный ответ - \(answerRound4[0]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                    }
                                }
                                else {
                                    print("Прaвильный ответ - \(answerRound3[2]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                                }
                            }
                            else {
                                print("Прaвильный ответ - \(answerRound3[1]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                            }
                        }
                        else {
                            print("Прaвильный ответ - \(answerRound3[0]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                        }
                    }
                    else {
                        print("Прaвильный ответ - \(answerRound2[2]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                    }
                }
                else {
                    print("Прaвильный ответ - \(answerRound2[1]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
                }
            }
            else {
                print("Прaвильный ответ - \(answerRound2[0]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
            }
        }
        else {
            print("Прaвильный ответ - \(answerRound1[2]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
        }
    }
    else {
        print("Прaвильный ответ - \(answerRound1[1]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
    }
}
else {
    print("Прaвильный ответ - \(answerRound1[0]) \nКоличества пройденных раундов - \(round) \nВаш выигрыш - \(sum) c")
}



