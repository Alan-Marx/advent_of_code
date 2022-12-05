class ElfCalorieFile
  include Enumerable

  def initialize(path)
    @lines = File.readlines(path).lazy.collect(&:chomp)
  end

  def each(&block)
    @lines.each(&block)
  end
end
