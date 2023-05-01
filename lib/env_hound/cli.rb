require "dry/cli"

module EnvHound
  module CLI
    extend Dry::CLI::Registry

    require_relative "cli/version"

    register "version", Version, aliases: ["v", "-v", "--version"]
  end
end
