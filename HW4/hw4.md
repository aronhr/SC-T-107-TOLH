#Homework 4 - Assembly

##Question 1

| Address  | Value   | Register  | Value |
| :------: |:-------:| :--------:| :----:|
| 0x100    | 0x11    | %rax      | 0x104 |
| 0x104    | 0x5     | %rcx      | 0x100 |
| 0x108    | 0x100   | %rdx      | 0x1   |
| 0x10C    | 0xAD    |           |		 |

### Answer in hexadecimal with no leading zeros, example **0xA**

>(%rax,%rdx,8)

What memory address does the operand reference? 

> 0x10C

What is the value of the operand ?

> 0xAD

##Question 2

| Address  | Value   | Register  | Value |
| :------: |:-------:| :--------:| :----:|
| 0x100    | 0x11    | %rax      | 0x10C |
| 0x104    | 0x5     | %rcx      | 0x2   |
| 0x108    | 0x100   | %rdx      | 0x108 |
| 0x10C    | 0xAD    |           |		 |

### Answer in hexadecimal with no leading zeros, example **0xA**

What is the value of the %rdx after the command has been executed ?

> movq %rax, %rdx

%rdx = 
> 0x10C

What is the value of the %rdx after the command has been executed ?

> movq (%rax), %rdx

%rdx = 
> 0xAD