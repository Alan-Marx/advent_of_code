class Rucksacks::File::Rucksack
  autoload :Item, File.expand_path('./file/item.rb', __dir__)

  attr_reader :items, :first_compartment, :second_compartment

  def initialize(items)
    @items = items
    @first_compartment, @second_compartment = @items.each_slice(items.size / 2).to_a
  end

  def duplicated_items
    (first_compartment & second_compartment).uniq.collect { |item| Item.new(item) }
  end

  def duplicated_item_priority_scores
    duplicated_items.sum(&:priority_score)
  end
end
