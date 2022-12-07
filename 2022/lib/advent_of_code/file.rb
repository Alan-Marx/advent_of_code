class AdventOfCode::File
  include Enumerable

  def initialize(path)
    @file = File.readlines(path, chomp: true)
  end

  def each(&block)
    @file.each(&block)
  end
end
