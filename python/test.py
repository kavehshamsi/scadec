
import sys
import re


with open(sys.argv[1], 'r') as fn:
    text = fn.read()
    print(re.findall(r"""/\*(([^\*\/])*(\*(?!/))*)*\*/""", text))