class Rucksacks::File
  autoload :Rucksack, File.expand_path('./file/rucksack.rb', __dir__)

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def duplicated_item_priority_scores
    rucksacks.sum(&:duplicated_item_priority_scores)
  end

  private

  def rucksacks
    @rucksacks ||= lines.collect { |line| Rucksack.new(line.split('')) }
  end

  def lines
    File.readlines(path, chomp: true)
  end
end
