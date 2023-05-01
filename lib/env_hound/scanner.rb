module EnvHound
  class Scanner
    def call(glob:)
      Dir
        .glob(glob)
        .map { |path| process_path(path) }
        .flatten
    end

    private

    def process_path(path)
      return path if File.file?(path)

      process_dir(path)
    end

    def process_dir(dir)
      Dir
        .children(dir)
        .map { |path| process_path("#{dir}/#{path}") }
    end
  end
end
