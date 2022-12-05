require 'pry'
require_relative './elf'

class ElfCalorieSummary
  include Enumerable

  def initialize(elf_calorie_file)
    @elf_calorie_file = elf_calorie_file
  end

  def max_calories(num_of_elves)
    take(num_of_elves).sum(&:total_calories)
  end

  private

  def each(&block)
    elves.each(&block)
  end

  def elves
    @elves ||=
      @elf_calorie_file
        .chunk_while { |_chunk, next_line| !next_line.empty? }
        .collect
        .with_index(1) { |calories, number| Elf.new(number, calories) }
        .sort_by(&:total_calories)
        .reverse
  end
end
