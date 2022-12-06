class RockPaperScissors::Game
  autoload :Round, File.expand_path('./game/round.rb', __dir__)
  autoload :Action, File.expand_path('./game/action.rb', __dir__)
  autoload :Strategy, File.expand_path('./game/strategy.rb', __dir__)

  attr_reader :path, :strategy

  def initialize(path, strategy)
    @path = path
    @strategy = strategy
  end

  def score
    rounds.sum(&:score)
  end

  private

  def rounds
    lines.collect { |row| Round.new(strategy.parse(row.split)) }
  end

  def lines
    File.readlines(path, chomp: true)
  end
end
