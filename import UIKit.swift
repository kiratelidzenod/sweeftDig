import UIKit

//1. გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.

func minSplit(_ amount: Int) -> (Int, [Int]) {
    let possibleCoins = [50, 20, 10, 5, 1]
    var tempAmount = amount
    var minCoins: [Int] = []
    
    for number in possibleCoins {
        while tempAmount >= number {
            tempAmount -= number
            minCoins.append(number)
        }
    }

    return (minCoins.count, minCoins)
}


minSplit(9) //(1, 1, 1, 1, 5)
minSplit(26) //(1, 5, 20)
minSplit(172) //(1, 1, 20, 50, 50, 50)

//2. დაწერეთ ფუნქცია რომელიც დააჯამებს ციფრებს ორ რიცსხვს შორის.
//   მაგალითად გადმოგვეცემა 19 და 22. მათ შორის ციფრების ჯამი იქნება :
//   // 19, 20, 21, 22
//   // (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19

func sumOfDigits(_ start: Int, _ end: Int) -> Int {
    var sum = 0
    
    for num in start...end {
        var currentNum = num
        while currentNum > 0 {
            sum += currentNum % 10
            currentNum /= 10
        }
    }

    return sum
}

sumOfDigits(7, 8) // ➞ 15
sumOfDigits(17, 20) // ➞ 29
sumOfDigits(10, 12) // ➞ 6

//3. მოცემულია String რომელიც შედგება „(" და „)" ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.

func isProperly(sequence: String) -> Bool {
    var stack = [Character]()
    
    if sequence.isEmpty {
        return false
    }

    for char in sequence {
        if char == "(" {
            stack.append(char)
        } else if char == ")" {
            if stack.isEmpty {
                return false
            }
            stack.removeLast()
        }
    }
    
    return stack.isEmpty
}
    
isProperly(sequence: "(()())") // ➞ true
isProperly(sequence: ")(()") // ➞ false
isProperly(sequence: "(()())(") // ➞ false
isProperly(sequence: "") // ➞ false


//4. გვაქვს N ფიცრისგან შემდგარი ხიდი. სიძველის გამო ზოგიერთი ფიცარი ჩატეხილია. ზურიკოს შეუძლია გადავიდეს შემდეგ ფიცარზე ან გადაახტეს ერთ ფიცარს. (რათქმაუნდა ჩატეხილ   ფიცარზე ვერ გადავა)
//   ჩვენი ამოცანაა დავითვალოთ რამდენი განსხვავებული კომბინაციით შეუძლია ზურიკოს ხიდის გადალახვა. გადმოგვეცემა ხიდის სიგრძე და ინფორმაცია ჩატეხილ ფიცრებზე. 0 აღნიშნავს ჩატეხილ ფიცარს 1_ანი კი მთელს. დასაწყისისთვის ზურიკო დგას ხიდის ერთ მხარეს (არა პირველ ფიცარზე) და გადალახვად ჩათვლება ხიდის მეორე მხარე (ბოლო ფიცრის შემდეგი ნაბიჯი)



//5. გადმოგეცემათ მთელი რიცხვი N. დაწერეთ ფუნქცია რომელიც დაითვლის რამდენი 0ით ბოლოვდება N! (ფაქტორიალი)
//     შენიშვნა 1000! შედგება 2568 სიმბოლოსაგან.

func zeros(N: Int) -> Int {
    var count = 0
    var divisor = 5

    while divisor <= N {
        count += N / divisor
        divisor *= 5
    }

    return count
}

zeros(N: 7) // ➞ 1
zeros(N: 12) // ➞ 2
zeros(N: 490) // ➞ 120