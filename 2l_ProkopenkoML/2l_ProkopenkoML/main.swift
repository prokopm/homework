//
//  main.swift
//  2l_ProkopenkoML
//
//  Created by Максим Прокопенко on 13.09.2021.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет
let numberArray = [33, 22, 43, 44, 78, 67, 11, 99]
for sorting in numberArray{
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}

//2. Написать функцию, которая определит делится ли число без остатка на 3.
for sortingTwo in numberArray{
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) делится на 3 без остатка")
    } else {
        print("\(sortingTwo) делится на 3 с остатком")
    }
}

//3. Создать возврастающий массив из 100 чисел.
var increasingNumbers: Array<Int> = []
for i in 1...100{
    increasingNumbers.append(i)
}
print(increasingNumbers)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var toDelete = increasingNumbers.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(toDelete)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
func fibonacciArray(n: Int) -> [Double] {
    var fibonacciNumbers: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacciNumbers.append(fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2])
    }
    return fibonacciNumbers
}
print(fibonacciArray(n: 50))

//6. Заполнить массив из 100 элементов различными простыми числами.
func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArray = arrayPassed
    while let newP = newArray.first {
        primes.append(newP)
        newArray = newArray.filter {$0 % newP != 0}
    }
    return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))

