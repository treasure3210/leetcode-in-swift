class Logger {

    // A dictionary (hash map) to store each message and its next eligible print timestamp
    var emptyHash: [String:Int] = [:]
    
    // Time constraint between two same messages: 10 seconds
    var timeOut = 10

    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        // If the message was printed recently, return false
        if let lastPrintedTimestamp = emptyHash[message], lastPrintedTimestamp > timestamp {
            return false
        }

        // Update the next eligible print timestamp for the message
        emptyHash[message] = timestamp + timeOut
        return true
    }
}

let logger = Logger()

let testCase: [(timestamp: Int, message: String)] = [(1, "foo"), (2, "bar"), (3, "foo"), (8, "bar"), (10, "foo"), (11, "foo")]

for test in testCase {
    let result = logger.shouldPrintMessage(test.timestamp, test.message)
    print("shouldPrintMessage(\(test.timestamp), \"\(test.message)\") returns \(result)")
}
