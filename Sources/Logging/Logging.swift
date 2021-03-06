public protocol Logging {
    var level: LoggingLevel { get set }
    func log(_ text: @autoclosure () -> String, level: LoggingLevel, file: String, function: String, line: UInt)
}

extension Logging {
    public func verbose(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .verbose, file: file, function: function, line: line)
    }

    public func debug(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .debug, file: file, function: function, line: line)
    }

    public func info(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .info, file: file, function: function, line: line)
    }

    public func warning(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .warning, file: file, function: function, line: line)
    }

    public func error(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .error, file: file, function: function, line: line)
    }

    public func fatal(_ text: @autoclosure () -> String, file: String = #file, function: String = #function, line: UInt = #line) {
        log(text, level: .fatal, file: file, function: function, line: line)
    }
}

