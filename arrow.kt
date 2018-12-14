//for compile
// alias arrow="kotlinc arrow.kt -include-runtime -d arrow.jar && java -jar arrow.jar"
// arrow <size>
package dojo.katafleche
import kotlin.system.exitProcess
import kotlin.*

fun main(args: Array<String>) {
    if (args.size == 0) {
        println("Please provide the size of the arrow (2-20)")
        return
    }

    val size: Int? = try { args[0].toInt() } catch (e: NumberFormatException) { null }
    val a: Int? = try { parseInt(args[0].toInt()) } catch (e: NumberFormatException) { null }

    println(a)
    if (size == null)
      bye("${args[0]} is not a number dumbass")

    println("Drawing a $size sized arrow!")

    spike(size)
    arrow(size)
    base(size)
    tail(size)
}

fun bye (msg: String) {
  println(msg)
  exitProcess(1)
}

fun errorHandling(size: Int) {
  if (size !in 2..20)
    bye("Between 2 and 20... What don't you understand ?")
}

fun spike(size: Int) {
  println(" ".repeat(size) + '*')
}

fun arrow(size: Int) {
  for (a in 1..size-1)
    println(" ".repeat(size-a) + '*' + " ".repeat(2*a-1) + '*')
}

fun base(size: Int) {
  println("*".repeat(size*2+1))
}

fun tail(size: Int) {
  for (a in 1..size)
    println(" ".repeat(size) + '*')
}
