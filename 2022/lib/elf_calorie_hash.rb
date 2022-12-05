class ElfCalorieHash
  include Enumerable

  def initialize(elf_calorie_file)
    @elf_calorie_hash =
      elf_calorie_file
      .chunk_while { |_chunk, next_line| !next_line.empty? }
      .collect
      .with_index(1) { |calories, elf| [elf, calories.sum(&:to_i)] }
      .to_h
  end

  def each(&block)
    @elf_calorie_hash.each(&block)
  end
end
