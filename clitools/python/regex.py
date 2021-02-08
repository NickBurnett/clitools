import re as regex
import sys
print()
if len(sys.argv[1:]) != 2:
    print("Usage \u001b[38;2;200;70;70mpython3 regex.py <regex> <normal>")
    print()
    exit()
pattern = r"" + str(sys.argv[1])
toMatch = str(sys.argv[2])
if pattern == "" or toMatch == "":
    print("\u001b[38;2;160;160;160mInvalid arguments...")
    print()
    exit()
if regex.match(pattern, toMatch):
    print("\u001b[38;2;160;160;160mThe given string \u001b[38;2;0;255;0mMATCHES\u001b[38;2;160;160;160m the given pattern...")
else:
    print("\u001b[38;2;160;160;160mThe given string \u001b[38;2;255;0;0mDOESN\'T MATCH\u001b[38;2;160;160;160m the given pattern...")
print()