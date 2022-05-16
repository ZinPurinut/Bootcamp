fun main(args: Array<String>) {

    val num = 5
    var factorial: Long = 1
    for (i in 1..num) {

        factorial *= i.toLong()
    }
    println("Factorial ของ  $num = $factorial")
}



