// kotlinc arrow.kt -include-runtime -d arrow.jar && java -jar arrow.jar
fun main(args: Array<String>) {
    print("Enter size: ")
    val size:Int = readLine()!!.toInt()

    centered(size)
    point(size)
    base(size)
    trunk(size)
}

fun centered(size: Int) {
    println(" ".repeat(size-1) + "*")
}

fun trunk(size: Int) {
    for (line in 0..size-1) {
        centered(size)
    }
}

fun base(size: Int) {
    println("*".repeat(2*size-1))
}

fun point(size: Int) {
    for (line in 1..size-2) {
      println(" ".repeat(size-line-1) + "*" + " ".repeat(line*2-1) + "*")
    }
}