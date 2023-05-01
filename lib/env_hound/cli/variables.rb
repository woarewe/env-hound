module EnvHound
  module CLI
    class Variables < Dry::CLI::Command
      def call(*)
        app = App.boot
        puts app.variables
      end
    end
  end
end
