class AdventOfCode::RockPaperScissors::StrategyParser::Action < AdventOfCode::RockPaperScissors::StrategyParser
  SYMBOLS_TO_ACTIONS = {
    'A' => :rock,
    'B' => :paper,
    'C' => :scissor,
    'X' => :rock,
    'Y' => :paper,
    'Z' => :scissor
  }.freeze

  private

  def parse_opponent_action(opponent_symbol, _symbol)
    SYMBOLS_TO_ACTIONS.fetch(opponent_symbol)
  end

  def parse_action(_opponent_symbol, symbol)
    SYMBOLS_TO_ACTIONS.fetch(symbol)
  end
end
