module EnvHound
  module CLI
    class ExampleFile < Dry::CLI::Command
      option :path, default: ".env.example", desc: "A path to the example file"
      option :legacy, default: "ignore", values: ["mark", "delete"], desc: <<~DESCRIPTION.strip
        Strategy for dealing with variables that are present in the example file but not in code anymore
      DESCRIPTION
      option :references

      # TODO: Add the following strategies for dealing with unused variables:
      # ignore, comment, mark
      # TODO: Add a feture for storing references where a given env var is used


      def call(path:, unused:, references:)
      end
    end
  end
end
