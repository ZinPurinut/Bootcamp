fun main(){
    val rows = 5
    for (i in 1..rows) {
        for (j in 1..i) {
            print("* ")
        }
        println()
    }

    for (i in rows downTo 1) {
        for (j in 1..i) {
            print("* ")
        }
        println()
    }
}