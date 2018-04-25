import XCTest
@testable import Blackjack

extension TextCommandStrategyTests {
    static var allTests: [(String, (TextCommandStrategyTests) -> () throws -> Void)] {
        return [
            ("testBasicCommands", testBasicCommands)
        ]
    }
}

class StubTextCommandReader: TextCommandReader {
    var next = ""
    func read() -> String {
        return next
    }
}

class TextCommandStrategyTests: XCTestCase {
    func testBasicCommands() {
        let reader = StubTextCommandReader()
        let strategy = TextCommandStrategy(reader: reader)
        let context = PlayingContext.empty
        var command = Command.Unknown

        reader.next = "H"
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(command, Command.Hit)

        reader.next = "S"
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(command, Command.Stand)

        reader.next = "D"
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(command, Command.Double)

        reader.next = "/"
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(command, Command.Split)

        reader.next = "Hoge"
        command = strategy.nextCommand(context: context)
        XCTAssertEqual(command, Command.Unknown)
    }
}

extension PlayingContext {
    static var empty: PlayingContext {
        return PlayingContext(
            knownDealerCard: Card.Spades1,
            subjectHand: Hand(),
            otherHands: [Hand]()
        )
    }
}
