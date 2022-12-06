class Rucksacks::File::Rucksack::Item
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def priority_score
    (('a'..'z').to_a + ('A'..'Z').to_a).index(type) + 1
  end
end
