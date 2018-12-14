# HowTo
#  1. install https://nim-lang.org
#  2. compile with `nim c arrow.nim`
#  3. launch with `./arrow`

import os, strutils, parseutils

# Get CLI args
let arguments = commandLineParams()
var sizeInt: int = 0

proc pUsage(): string =
  result = "An integer between 2 and 20 is needed\nUsage: ./arrow 4"

try:
  sizeInt = parseInt(arguments[0])
except:
  let
    e = getCurrentException()
    msg = getCurrentExceptionMsg()
  # echo "Got exception ", repr(e), " with message ", msg
  echo pUsage()
  quit()

if sizeInt <= 2 or sizeInt >= 20:
  echo pUsage()
  quit()

# Draw spike
echo repeat(" ", sizeInt), "*"

# Draw head
var rowSize: int = sizeInt
for i in 2..sizeInt:
  echo repeat(" ", rowSize - 1), "*", repeat(" ", (sizeInt - rowSize ) * 2 + 1), "*"
  rowSize -= 1

# Draw base
echo repeat("*", sizeInt * 2 + 1)

# Draw tail
for i in 1..sizeInt:
  echo repeat(" ", sizeInt), "*"
