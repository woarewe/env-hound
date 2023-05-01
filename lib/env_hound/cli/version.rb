module EnvHound
  module CLI
    class Version < Dry::CLI::Command
      def call
        puts VERSION
      end
    end
  end
end
