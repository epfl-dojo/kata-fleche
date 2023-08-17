value = int(input("Enter a value between 2 and 20 : "))
if value < 2 or value > 20:
    print("Please enter a correct value between 2 and 20!")
    exit()

print(" " * (value - 1) + "*")

if value != 2:
    for i in range(1, value - 1):
        print(f" " * (value - i - 1) + "*" + " "*((value * 2 - 1) - 2*(value - i - 1) - 2 ) + "*")

print("*" * (value * 2 - 1))

for i in range(value):
    print(" " * (value - 1) + "*")
