var input = (padding = process.argv[2]);

if (input <= 2 || input > 20 || isNaN(input)) {
  console.error("Please enter a valid input between 2 and 20 !");
  process.exit(1);
}

var queuestring = "";
var midstring = "";
var tetestring = "";

function tete(n) {
  let number;
  number = n - 1;

  let spacebetween = 1;

  for (let i = 0; i < n - 1; i++) {
    if (spacebetween == 1) {
      tetestring = tetestring + `${" ".repeat(number)}*\n`;
    } else if (spacebetween == 2) {
      tetestring = tetestring + `${" ".repeat(number)}*${" ".repeat(1)}*\n`;
    } else {
      tetestring =
        tetestring +
        `${" ".repeat(number)}*${" ".repeat(spacebetween + i - 2)}*\n`;
    }
    spacebetween = spacebetween + 1;
    number = number - 1;
  }

  return tetestring;
}

function mid(n) {
  for (let i = 0; i < n * 2 - 1; i++) {
    midstring = midstring + `*`;
  }
  return midstring + `\n`;
}

function queue(n) {
  for (let i = 0; i < n; i++) {
    if (i == n - 1) {
      queuestring = queuestring + `${" ".repeat(n - 1)}*`;
    } else {
      queuestring = queuestring + `${" ".repeat(n - 1)}*\n`;
    }
  }
  return queuestring;
}

let fleche = tete(input) + mid(input) + queue(input);

console.log(fleche);
