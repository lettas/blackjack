protocol TextCommandReader {
    func read() -> String
}

class StdinTextCommandReader: TextCommandReader {
    func read() -> String {
        return readLine() ?? ""
    }
}

class TextCommandStrategy: Strategy {
    let reader: TextCommandReader

    init(reader: TextCommandReader) {
        self.reader = reader
    }

    func nextCommand(context: PlayingContext) -> Command {
        let commandText = reader.read()
        switch commandText {
            case "H": return Command.Hit
            case "S": return Command.Stand
            case "D": return Command.Double
            case "/": return Command.Split
            default: return Command.Unknown
        }
    }
}
