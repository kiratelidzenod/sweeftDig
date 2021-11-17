# palindrome
# inpt = input("Enter your text: ")
# def isPalindrome(inpt):
#     inptReversed = inpt[::-1]
#     if inptReversed == inpt:
#         print("Given text is palindrome")
#     else:
#         print("Given text is not palindrome")
#
#
# isPalindrome(inpt)




# coins

# amountCoins = int(input("Enter desirable amount of money (in coins): "))
# def minPosibleCoins(amountCoins):
#    givenCoins = [1, 5, 10, 20, 50]
#    coinsNeeded = 0
#    while amountCoins > 0:
#       while amountCoins >= givenCoins[-1]:
#          amountCoins -= givenCoins[-1]
#          coinsNeeded += 1
#       givenCoins.pop(-1)
#    print("Lowest possible amount is", coinsNeeded, "coins.")
#
#
# minPosibleCoins(amountCoins)




# array
# myArray = [9, 5, 18, 7, 199, 375, 1125, 1]
#
# def notInArray():
#    lstArray  = sorted(myArray)
#    number = 1
#    while number in lstArray:
#       number += 1
#    print("The lowest whole number not included in this array, greater than 0 is: ", number)
#
# notInArray()



# correct sequence
# def checkParen(data):
#    openParen = "("
#    closeParen = ")"
#    paren = []
#    length = len(data)
#    for i in range(length):
#       if data[i] == openParen:
#          paren.append(openParen)
#       elif data[i] == closeParen:
#          if len(paren) == 0:
#             return False
#       paren.pop()
#    return len(paren)==0


# variants
# def stairVariants(n):
#    variants = [1,1]
#    for i in range(2, n):
#       variants.insert(i, variants[i-1] + variants[i-2])
#    return variants[n]