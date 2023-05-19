class Logger {

    var emptyHash: [String:Int] = [:]
    var timeOut = 10

    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        if let lastPrintedTimestamp = emptyHash[message], lastPrintedTimestamp > timestamp {
            return false
        }

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
