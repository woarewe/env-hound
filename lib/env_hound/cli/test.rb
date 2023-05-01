module EnvHound
  module CLI
    class Test < Dry::CLI::Command
      def call(*)
        config = EnvHound::Config.from_file(EnvHound::Config::DEFAULT_PATH)
        binding.irb
      end
    end
  end
end
