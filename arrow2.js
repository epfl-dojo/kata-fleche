var input = padding = process.argv[2]
var starspacing = 1

if (input < 2 || input > 20 || isNaN(input)) {
  console.error("pas juste :(")
  process.exit(1)
}

for (var i = 1;i <= input;i++) {
  var tempstring = ""
  for (var j = 0;j < padding;j++) {
    tempstring += " "
  }
  tempstring += "*"
  if (i > 1 && i < input) {
    for (var j = 0;j < starspacing;j++) {
      tempstring += " "
    }
    tempstring += "*"
    starspacing = starspacing + 2
  } else if (i == input) {
    for (var j = 0;j < starspacing+1;j++) {
      tempstring += "*"
    }
  }
  console.log(tempstring)
  padding--
 }

for (var i = 0;i < input;i++) {
  var tempstring = ""
  for (var j = 0;j < input;j++) {
    tempstring += " "
  }
  tempstring += "*"
  console.log(tempstring)
}
