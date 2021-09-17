//User Input and error message
var sizeArrow = process.argv[2]
if (sizeArrow < 2 || sizeArrow > 20 || isNaN(sizeArrow)) {
  console.error("ERROR you need to type a number between 2 and 20")
  process.exit(1)
}

//Run the print function
headPrint(sizeArrow);
bodyPrint(sizeArrow);
basePrint(sizeArrow);
tailPrint(sizeArrow);

//Print the head arrow
function headPrint(sizeArrow){ 
    head = " ".repeat(sizeArrow -1)+ "*";
    console.log(head)
}

//Print the body arrow
function bodyPrint(sizeArrow){
    arrowBodyLength = sizeArrow -2
    numberSpaceBefore = sizeArrow -2
    numberSpaceBetween = 1
    
    for (var i = 0; i < arrowBodyLength; i++){
        body = " ".repeat(numberSpaceBefore) + "*" + " ".repeat(numberSpaceBetween) + "*" 
        numberSpaceBetween = numberSpaceBetween +2
        numberSpaceBefore = numberSpaceBefore -1
        console.log(body);
    }
}

//Print the base arrow
function basePrint(sizeArrow){
    starNumberRepeat = sizeArrow*2 -1 
    base = "*".repeat(starNumberRepeat)
    console.log(base)
}

//Print the tail arrow
function tailPrint(sizeArrow){
    tail = " ".repeat(sizeArrow -1) + "*\n"
    fullTail = tail.repeat(sizeArrow -1)
    console.log(fullTail)
}

//Repeat character
function repeatCharacter(caracter,repeatnumber){
    return caracter.repeat(repeatnumber)
}