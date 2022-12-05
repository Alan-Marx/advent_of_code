require 'pry'

class ElfCalorieHash
  include Enumerable

  def initialize(elf_calorie_file)
    @elf_calorie_hash =
      elf_calorie_file
      .chunk_while { |_chunk, next_line| !next_line.empty? }
      .collect
      .with_index(1) { |calories, elf| [elf, calories.sum(&:to_i)] }
      .sort { |elf, next_elf| elf.last <=> next_elf.last }
      .reverse
      .to_h
  end

  def max_calories(num_of_elves)
    take(num_of_elves).sum(&:last)
  end

  def each(&block)
    @elf_calorie_hash.each(&block)
  end
end
