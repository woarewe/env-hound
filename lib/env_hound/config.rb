require 'yaml'

module EnvHound
  class Config
    DEFAULT_PATH = File.expand_path('config.yml', __dir__)

    private_class_method :new

    attr_reader(
      :paths
    )

    def initialize(paths:)
      @paths = paths
    end

    class << self
      def build(paths:)
        new(paths: paths)
      end

      def from_file(path = DEFAULT_PATH)
        config = YAML.load_file(path)
        build(
          paths: config['paths']
        )
      end
    end
  end
end
