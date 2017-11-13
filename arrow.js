#!/usr/bin/env node

// print cli usage
function printUsage() {
  console.log("Usage: node arrow.js x\n" +
              " E.g.: node arrow.js 4\n" +
              " Note: x have to be >= 2 && <=20 \n" +
              "\n     let's try again (: \n")
}

// read cli input
const args = process.argv
var   x = ~~args[2]
if ( (typeof x != "number") || (x <= 2) || (x >= 20) ) {
  printUsage();
} else {
  drawArrow(x)
}

// draw the arrow
function drawArrow(x) {
  var col = (x*2)-1      // column
  var row = x*2          // row
  var   m = 0;          // mirror counter for middle of the head

  //console.log("x="+x+"; col="+col+"; row="+row+";")
  console.log("x="+x+";")

  // for each rows
  for (i=0;i<row;i++) {
    line = ''
    // draw all the head but the first row (same as tail)
    if (i < x && i!=0) {
      // last row of the head
      if (i == x-1) {
        Array(row-1).fill(1).forEach(function() { line += '*' })
      } else {
        m++
        for (l=1; l<=col; l++) {
          // use the mirror counter
          if (l == x - m || l == x + m) {
            line += '*'
          } else {
            line += ' '
          }
        }
      }
    // draw the tail and the first line
    } else {
      for (l=1; l<=col; l++) {
        // draw the * in the middle
        if (l == x) {
          line += '*'
        } else {
          line += ' '
        }
      }
    }
    console.log(line)
  }
}
