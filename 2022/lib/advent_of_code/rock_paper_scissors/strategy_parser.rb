class AdventOfCode::RockPaperScissors::StrategyParser
  autoload :Action, ::File.expand_path('./strategy_parser/action.rb', __dir__)
  autoload :Result, ::File.expand_path('./strategy_parser/result.rb', __dir__)

  def initialize(strategy_file)
    @strategy_file = strategy_file
  end

  def predicted_score
    rounds.sum(&:score)
  end

  private

  def rounds
    @strategy_file.each.collect(&:split).collect do |symbols|
      opponent_symbol, symbol = symbols

      opponent_action = parse_opponent_action(opponent_symbol, symbol)
      action = parse_action(opponent_symbol, symbol)

      AdventOfCode::RockPaperScissors::Round.new(opponent_action, action)
    end
  end

  def parse_opponent_action(opponent_symbol, symbol)
    raise NotImplementedError
  end

  def parse_action(opponent_symbol, symbol)
    raise NotImplementedError
  end
end
