operator = input("select an operator (+ * / -): ")
numb1 = int(input("Enter first number: "))
numb2 = int(input("Enter second number: "))
if operator == "+":
    result = numb1 + numb2
    print(round(result, 2))
elif operator == "-":
    result = numb1 - numb2
    print(round(result, 2))
elif operator == "*":
    result = numb1 * numb2
    print(round(result, 2))

elif operator == "/":
    result = numb1 * numb2
    print(round(result, 2))
else:
    print(f"{operator} is an invalid operator")