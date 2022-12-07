class AdventOfCode::Rucksacks::Rucksack
  autoload :Compartment, ::File.expand_path('./rucsack/compartment.rb', __dir__)

  def initialize(items)
    @items = items
  end

  def compartments
    @compartments ||= @items.each_slice(@items.size / 2).collect do |compartment_items|
      Compartment.new(compartment_items)
    end
  end
