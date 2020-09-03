
import Foundation

struct MockBarData: Identifiable {
    var id = UUID()
    var amount: Int
    var day: String
}

var dayData = [
    MockBarData(amount: 60, day: "L"),
    MockBarData(amount: 140, day: "M"),
    MockBarData(amount: 65, day: "X"),
    MockBarData(amount: 80, day: "J"),
    MockBarData(amount: 50, day: "V"),
    MockBarData(amount: 90, day: "S"),
    MockBarData(amount: 130, day: "D")
]

var weekData = [
    MockBarData(amount: 60, day: "Sem 1"),
    MockBarData(amount: 140, day: "Sem 2"),
    MockBarData(amount: 65, day: "Sem 3"),
    MockBarData(amount: 80, day: "Sem 4"),
    MockBarData(amount: 50, day: "Sem 5")
]

var monthData = [
    MockBarData(amount: 60, day: "Ene"),
    MockBarData(amount: 140, day: "Feb"),
    MockBarData(amount: 65, day: "Mar"),
    MockBarData(amount: 80, day: "Abr"),
    MockBarData(amount: 50, day: "May"),
    MockBarData(amount: 90, day: "Jun"),
    MockBarData(amount: 130, day: "Jul"),
    MockBarData(amount: 50, day: "Ago"),
    MockBarData(amount: 90, day: "Sep"),
    MockBarData(amount: 130, day: "Oct"),
    MockBarData(amount: 50, day: "Nov"),
    MockBarData(amount: 90, day: "Dic")
]




