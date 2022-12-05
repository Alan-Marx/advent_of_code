class Elf
  attr_reader :number, :calories

  def initialize(number, calories)
    @number = number
    @calories = calories.collect(&:to_i)
  end

  def total_calories
    @total_calories ||= calories.sum
  end
end
