# HW2 - Bits and Bytes


## Question 1
### Convert decimal **84** to binary and hexadecimal
> Binary: 0101 0100
> Hexadecimal: 0x54

## Question 2
### Convert decimal **42** to binary and hexadecimal
> Binary: 0010 1010
> Hexadecimal: 0x2A

## Question 3
### Convert binary **1101 1111** to decimal
> Decimal: 223

## Question 4
### Convert binary **1001 1011** to decimal
> Decimal: 155

## Question 5
### Fill in the missing entries in the following table
| Decimal    | Binary     | Hexadecimal |
| :--------: |:----------:| :----------:|
| 198        | 1100 0110  | 0xC6        |
| 64         | 0100 0000  | 0x40        |
| 131        | 1000 0011  | 0x83        |


## Question 6
### Let a = 1111 0000 and b = 0001 0110

>Fill in the following table showing.

>Write your answers in one byte binary, for example **1010 1010**

| Operation  | Result     |
| :--------: |:----------:|
| ~a         | 0000 1111  |
| ~b         | 1110 1001  |
| a & b      | 0001 0000  |
| a \| b     | 1111 0110  |
| a ^ b      | 1110 0110  |


## Question 7
### Suppose that a and b have byte values of 0x56 and 0x45, respectively. Fill in the following table indicating the byte values of different expressions.

>Note that logical operators return either **1** or **0**, indicating a result of either **TRUE** or **FALSE**.

>Write your answer in one byte hexadecimal, for example **0xA2**

| Expression | Value |
| :--------: |:-----:|
| a & b      | 0x44  |
| a \| b     | 0x57  |
| ~a \| ~b   | 0xBB  |
| a & !b     | 0x00  |
| a && b     | 0x01  |
| a \|\| b   | 0x01  |
| !a \|\| !b | 0x00  |
| a && ~b    | 0x01  |


## Question 9
### Consider the following python program.

>What hexadecimal number can be masked with the variable number so the program evaluates correctly if number is odd or even ?

> Write your answer in one byte hexadecimal, for example **0xA2**


´´´
number = 0x9a

isOdd = number & **0x01**

if isOdd:
    print(str(number) + " is odd number")
else:
    print(str(number) + " is even number")

´´´

## Question 10
### You and your friend are helping each other out with a homework assignment in Tölvuhögun.

>The assignment is a quiz with multiple choice questions. Each question has four possible answers: a, b, c and d.

>You split the assignment into two halves, you solve the first half and your friend the other half.

>You are so afraid of getting caught, so you come up with a system.
You communicate by sending information hidden in a 2 byte binary string.

>The question number is located in bits 6,7,8 and 9.
The answer is located in bits **12** and **13**

|15   |14   |13   |12   |11   |10   |9    |8    |7    |6    |5    |4    |3    |2    |1    |0    |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|     |     |a    |a    |     |     |q    |q    |q    |q    |     |     |     |     |     |     |

>You can encode the answer as follows:

0 = a
1 = b
2 = c
3 = d

>Answer to what question is hidden in the number **0x7D9A**
and what is the answer ?


> Complete this code:

>The values used to mask the number should be answered in a two byte hexadecimal.
The values used to shift should be answered in decimal.

´´´
number = 0x7d9a

question_mask = number & **0x3C0**

answer_mask = number & **0x3000**

question_number = question_mask >> **6**

answer = answer_mask >> **12**

´´´

>Question number: **6**

>Answer (a,b,c or d): **D**
