class AdventOfCode::Rucksacks
  include Enumerable

  autoload :Rucksack, ::File.expand_path('./rucsacks/rucksack.rb', __dir__)

  def initialize(rucksack_file)
    @rucksack_file = rucksack_file
  end

  def each(&block)
    @rucksack_file.each do |items|
      block.call(Rucksack.new(items.split('')))
    end
  end
end
