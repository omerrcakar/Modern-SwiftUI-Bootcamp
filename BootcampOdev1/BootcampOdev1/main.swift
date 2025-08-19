//
//  main.swift
//  BootcampOdev1
//
//  Created by ÖMER  on 19.08.2025.
//

import Foundation

// Ödev 1.1 – Değişkenler ve Veri Tipleri
// AÇIKLAMA : Kendi kişisel bilgi kartınızı oluşturun.
// Optional değişkenlerle güvenli kod yazımını deneyimleyin.

var name: String = "Ömer"
var age: Int = 24
var height: Double = 1.78
var isWorking: Bool?



if let isWorking = isWorking {
    if isWorking {
        print("\(name) çalışıyor")
    }else{
        print("\(name) çalışmıyor")
    }
}else{
    print("nil değer içeriyor")
}



// Ödev 1.2 – Fonksiyonlar ve Closure’lar
// AÇIKLAMA : Basit bir hesap makinesi fonksiyonu yazın (toplama, çıkarma, çarpma, bölme).
// Closure kullanarak bir diziyi filtreleyin ve sıralayın.


func calculate(_ a: Double, _ b: Double, operation: (Double, Double) -> Double) -> Double {
    return operation(a, b)
}

var sum = calculate(20, 5, operation: { $0 + $1 })
var minus = calculate(10, 2, operation: { $0 - $1 })
var multi = calculate(10, 2, operation: { $0 * $1 })
var divide = calculate(10, 2, operation: { $0 / $1 })




var array: [String] = ["Apple", "Banana", "Orange", "Lemon", "Kiwi", "Strawberry"]

for (index, meyve) in array.enumerated() {
    print("\(index + 1). eleman : \(meyve)")
    
}

var newArray = array.map { $0.uppercased() }

var sortArray = newArray.sorted()

var filteredArray = array.filter { $0.hasPrefix("A") }

var reversedArray = array.reverse()


var oldArray = [1,2,3,4,5]
var sumOldArray = oldArray.reduce(0, +)


