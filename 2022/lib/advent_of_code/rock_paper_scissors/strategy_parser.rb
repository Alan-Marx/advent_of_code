class AdventOfCode::RockPaperScissors::StrategyParser
  autoload :Action, File.expand_path('./strategy_parser/action.rb', __dir__)
  autoload :Result, File.expand_path('./strategy_parser/result.rb', __dir__)

  attr_reader :strategy_file

  def initialize(strategy_file)
    @strategy_file = strategy_file
  end

  def predicted_score
    rounds.sum(&:score)
  end

  private

  def rounds
  end
end
