class AdventOfCode::CalorieCounter
  def initialize(calorie_file)
    @calorie_file = calorie_file
  end

  def sum_of_grouped_calorie_totals(num_of_groups)
    sorted_grouped_calorie_totals.take(num_of_groups).sum
  end

  private

  def sorted_grouped_calorie_totals
    @sorted_grouped_calorie_totals ||= grouped_calorie_totals.sort.reverse
  end

  def grouped_calorie_totals
    grouped_calories.collect { |calories| calories.collect(&:to_i).sum }
  end

  def grouped_calories
    @calorie_file.each.chunk_while { |_group, next_line| !next_line.empty? }
  end
end
