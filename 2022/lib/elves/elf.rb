class Elves::Elf
  attr_reader :calories

  def initialize(calories)
    @calories = calories.collect(&:to_i)
  end

  def total_calories
    @total_calories ||= calories.sum
  end
end
