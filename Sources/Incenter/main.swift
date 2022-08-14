import ArgumentParser

struct Incenter: ParsableCommand {
    static let configuration = CommandConfiguration(abstract: "A Swift command-line tool to download images from museums.", subcommands: [Search.self])

    init() { }
}

Incenter.main()


struct Search: ParsableCommand {
    @Argument(help: "The keyword to search")
    private var keyword: String

    func run() throws {
        print(keyword)
    }
}
