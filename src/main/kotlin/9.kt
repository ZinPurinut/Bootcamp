fun main() {
    var money = 80
    println("โปรดใส่จำนวนเงิน")

    if (money % 100 == 0 && money != 0)
        println("$money bath")
    if (money >= 1000) {
        var b = money / 1000
        println("1000-bath $b bills")
        money = money - b * 1000

    }
    if (money >= 500) {
        var b = money / 500
        println("500-bath $b bills")
        money = money - b * 500
    }
    if (money >= 100) {
        var b = money / 100
        println("100-bath $b bills")
        money = money - b * 100
    }

    else
        print("โปรดใส่เงินมากกว่า 100 ")

}