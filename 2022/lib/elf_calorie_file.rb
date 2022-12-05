require_relative './elf'

class ElfCalorieFile
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def max_calories(num_of_elves)
    sorted_elves.take(num_of_elves).sum(&:total_calories)
  end

  private

  def sorted_elves
    @sorted_elves ||= elves.sort_by(&:total_calories).reverse
  end

  def elves
    @elves ||= lines.chunk_while { |_, next_line| !next_line.empty? }.collect.with_index(1) { |calories, number| Elf.new(number, calories) }
  end

  def lines
    @lines ||= File.readlines(path).collect(&:chomp)
  end
end
