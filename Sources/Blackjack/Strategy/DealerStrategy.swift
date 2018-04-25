class DealerStrategy: Strategy {
    func nextCommand(context: PlayingContext) -> Command {
        if context.subjectHand.score < 17 {
            return Command.Hit
        }
        else {
            return Command.Stand
        }
    }
}
