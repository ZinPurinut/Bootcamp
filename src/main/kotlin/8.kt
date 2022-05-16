fun main(args: Array<String>) {
    var sum = 0
    for (i in 10 downTo 1 )
        sum += i
    println()
    for (i in 10 downTo 1)
        print("$i  ")
    println("sum = $sum")


    for (i in 1..19 step 1)
        sum += 3
    println()
    for (i in 1..19 step 1)
        print("$i  ")
    println(" sum = $sum")


    for (i in 1 downTo -19 step 1)
        sum += -6
    println()
    for (i in 1 downTo -19 step 1)
        print("$i  ")
    println(" sum = $sum")

}