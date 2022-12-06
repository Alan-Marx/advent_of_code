class AdventOfCode::File
  include Enumerable

  def initialize(path)
    @path = path
  end

  def each(&block)
    File.readlines(@path, chomp: true, &block)
  end
end
