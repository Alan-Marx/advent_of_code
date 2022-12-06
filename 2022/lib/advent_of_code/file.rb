class AdventOfCode::File
  include Enumerable

  autoload :Calories, File.expand_path('./file/calories.rb', __dir__)

  def initialize(path)
    @path = path
  end

  def each(&block)
    File.readlines(@path, chomp: true, &block)
  end
end
