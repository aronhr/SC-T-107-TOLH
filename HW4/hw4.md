# Homework 4 - Assembly

## Question 1

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

## Question 2

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



## Question 5
| Address  | Value   | Register  | Value |
| :------: |:-------:| :--------:| :----:|
| 0x100    | 0x40    | %rax      | 0x100 |
| 0x108    | 0x1     | %rcx      | 0x1   |
| 0x110    | 0x2     | %rdx      | 0x3   |
| 0x118    | 0x105   |           |		 |

> Fill in the following table showing the effects of the following instructions in terms of both the register or memory location that will be updated and the resulting value:

| Instruction                 | Destination   | Value  |
| :-------------------------: |:-------------:| :-----:|
| addq %rdx, (%rax)  		  | 0x100         | 0x43   |
| subq %rdx, 16(%rax,%rcx, 8) | 0x118         | 0x102  |
| imulq $4, 8(%rax)  		  | 0x108         | 0x4    |
| incq 0x1(%rax, %rdx, 5)     | 0x110         | 0x3    |
| decq %rcx 			      | %rcx          | 0x0    |
| addq %rdx, %rax    		  | %rax          | 0x103  |


