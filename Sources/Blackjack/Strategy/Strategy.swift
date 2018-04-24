protocol Strategy {
    func nextCommand(context: PlayingContext) -> Command
}
