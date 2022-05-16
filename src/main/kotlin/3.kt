fun main() {
    val salaray = 24000
    val cul: Int
    if (salaray < 15000) {
        cul = salaray / 100 * 5
    } else if (salaray > 15000) {
        cul = salaray / 100 * 10
    }
    else{
        cul = 0
    }
    println("$cul")
}
