number1 = int(input("number1: "))
number2 = int(input("number2: "))

if number1 > number2:
    greater = number1
    smaller = number2
else:
    greater = number2
    smaller = number1

result = (greater - smaller) / greater * 100

print(result)
print("improvement") if number1 > number2  else print("degradation")
