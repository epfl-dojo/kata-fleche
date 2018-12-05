import strutils, parseutils

echo "What size should the arrow be?"
var size: string = readLine(stdin)
var sizeInt: int = parseInt(size)

# spike
echo repeat(" ", sizeInt), "*"

# head
var rowSize: int = sizeInt
for i in 2..sizeInt:
  echo repeat(" ", rowSize - 1), "*", repeat(" ", (sizeInt - rowSize )* 2 + 1), "*"
  rowSize -= 1

# base
echo repeat("*", sizeInt * 2 + 1)

# tail
for i in 1..sizeInt:
  echo repeat(" ", sizeInt), "*"
