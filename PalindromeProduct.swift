func isPalindrome(_ num: Int) -> Bool {
    let numStr = String(num)
    let reversed = String(numStr.reversed())
    return numStr == reversed
}

func largestPalindrome() -> Int {
    var largest = 0

    for i in stride(from: 999, through: 100, by: -1) {
        for j in stride(from: 999, through: 100, by: -1) {
            let product = i * j
            if isPalindrome(product) && product > largest {
                largest = product
            }
        }
    }

    return largest
}

print(largestPalindrome(