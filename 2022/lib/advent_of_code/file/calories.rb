class AdventOfCode::File::Calories < AdventOfCode::File
  def sum_of_grouped_calorie_totals(num_of_groups)
    sorted_grouped_calorie_totals.first(num_of_groups).sum
  end

  private

  def sorted_grouped_calorie_totals
    @sorted_grouped_calorie_totals ||= grouped_calorie_totals.sort.reverse
  end

  def grouped_calorie_totals
    grouped_calories.collect { |calories| calories.sum(&:to_i) }
  end

  def grouped_calories
    chunk_while { |_, next_calorie| !next_calorie.empty? }
  end
end
