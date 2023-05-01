module EnvHound
  module CLI
    class Files < Dry::CLI::Command
      def call(*)
        app = App.boot
        puts app.files
      end
    end
  end
end
