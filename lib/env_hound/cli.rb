require "dry/cli"

module EnvHound
  module CLI
    extend Dry::CLI::Registry

    require_relative "cli/version"
    require_relative "cli/test"
    require_relative "cli/files"
    require_relative "cli/variables"
    require_relative "cli/example_file"

    register "version", Version, aliases: ["v", "-v", "--version"]
    register "test", Test
    register "files", Files
    register "variables", Variables
    register "example-file", ExampleFile
  end
end
