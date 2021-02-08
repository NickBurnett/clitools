import sys

if len(sys.argv[1:]) != 3:
    print()
    print("Usage \u001b[38;2;200;70;70mpython3 rgb.py <r> <g> <b>")
    print()
    exit()
r = 0
g = 0
b = 0
try:
    r = str(sys.argv[1])
    g = str(sys.argv[2])
    b = str(sys.argv[3])
except ValueError:
    print("Error parsing RGB...")
    print()
    exit()
s = str(str(r) + " " + str(g) + " " + str(b))
print("\u001b[38;2;" + str(r) + ";" + str(g) + ";" + str(b) + "m")
print(s)
print()
