module EnvHound
  class App
    private_class_method :new

    attr_reader :scanner, :config, :parser

    def initialize(scanner:, config:, parser:)
      @scanner = scanner
      @config = config
      @parser = parser
    end

    def files
      config
        .paths
        .map { |path| scanner.call(glob: path) }
        .flatten
        .uniq
    end

    def variables
      files
        .map { |file| parser.call(content: File.read(file)) }
        .flatten
        .uniq
    end

    class << self
      def boot()
        config = Config.from_file()
        new(
          scanner: Scanner.new,
          config: config,
          parser: Parser.new
        )
      end
    end
  end
end
