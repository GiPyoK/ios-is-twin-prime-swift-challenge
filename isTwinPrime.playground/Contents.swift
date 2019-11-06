import UIKit

func isPrime(_ number: Int) -> Bool {
    if number <= 1 { return false }
    
    let flag = true
    for i in 2..<number {
        if (number % i) == 0 {
            return false
        }
    }
    return flag
}

func isTwinPrime(_ number: Int) -> Bool {
    if !isPrime(number) { return false }
    
    if isPrime(number - 2) || isPrime(number + 2) {
        return true
    } else {
        return false
    }
}















//Test cases
isTwinPrime(2)   // false
isTwinPrime(10)  // false
isTwinPrime(9)   // false
isTwinPrime(4)   // false
isTwinPrime(5)   // true
isTwinPrime(7)   // true
isTwinPrime(23)  // false
isTwinPrime(37)  // false
isTwinPrime(883) // true
isTwinPrime(907) // false
isTwinPrime(169) // false
