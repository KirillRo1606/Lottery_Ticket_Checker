//
//Method that take Lottery Ticket Number and return Bool value, in case when number is
//invalid return false and print in console "Invalid ticket number"
func isWin(ticketNumber: Int) -> Bool {
    var stringTicketNumber = String(ticketNumber)
    var digitsAmount = stringTicketNumber.count
    guard digitsAmount >= 2 && digitsAmount <= 8 && digitsAmount.isMultiple(of:2) else {
        print("Invalid ticket number")
        return false
    }
    var digitsArray = stringTicketNumber.map { Int(String($0))! }
    var firstHalfOfArray = digitsArray[0...(digitsAmount/2 - 1)]
    var lastHalfOfArray = digitsArray[digitsAmount/2...(digitsAmount - 1)]
    var sumFirstHalfOfArray = firstHalfOfArray.reduce(0, +)
    var sumLastHalfOfArray = lastHalfOfArray.reduce(0, +)
    return sumFirstHalfOfArray == sumLastHalfOfArray
}


