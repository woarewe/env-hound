module EnvHound
  class Parser
    # TODO: Create a separete list for required and optional env vars
    # fetch() - required
    # [] - optional
    REGEXPS = [
      /ENV\[["'](?<variable>\w+)["']\]/,
      /ENV\.fetch\(["'](?<variable>\w+)["']\)/
    ].freeze

    def call(content:)
      REGEXPS.map do |regexp|
        content.scan(regexp).map do
          Regexp.last_match[:variable]
        end
      end.flatten.uniq
    end
  end
end

ENV['lol']
