import sys
from random import randint as ran

print()

passlen = 0
settings = []
lower = list("abcdefghijklmnopqrstuvwxyz")
upper = [i.upper() for i in lower]
number = list("1234567890")
symbol = list("!@#$%^&*()_")

if len(sys.argv) > 0:
    for i in sys.argv[1:]:
        if i == "lower":
            settings.append(lower)
        elif i == "upper":
            settings.append(upper)
        elif i == "number":
            settings.append(number)
        elif i == "symbol":
            settings.append(symbol)
        else:
            try:
                passlen = int(i)
            except ValueError:
                pass
if passlen == 0:
    print("Randomizing password length...")
    passlen = ran(5, 15)
if len(settings) == 0:
    print("All settings on...")
    settings = [lower, upper, number, symbol]


def genPass(size: int, options: [str]) -> str:
    password = str()
    for i in range(0, size):
        option = options[ran(0, len(options) - 1)]
        password += option[ran(0, len(option) - 1)]
    return password


print("\u001b[38;2;160;160;160mGenerated Password...\u001b[38;2;0;255;0m\u001b[1m" + genPass(passlen, settings))
print()
