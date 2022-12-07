class AdventOfCode::RockPaperScissors::StrategyParser::Result < AdventOfCode::RockPaperScissors::StrategyParser
  OPPONENT_SYMBOL_TO_ACTION = {
    'A' => :rock,
    'B' => :paper,
    'C' => :scissor
  }.freeze

  OPPONENT_SYMBOL_AND_SYMBOL_TO_ACTION = {
    ["A", "X"] => :scissor,
    ["A", "Y"] => :rock,
    ["A", "Z"] => :paper,
    ["B", "X"] => :rock,
    ["B", "Y"] => :paper,
    ["B", "Z"] => :scissor,
    ["C", "X"] => :paper,
    ["C", "Y"] => :scissor,
    ["C", "Z"] => :rock
  }.freeze

  private

  def parse_opponent_action(opponent_symbol, _symbol)
    OPPONENT_SYMBOL_TO_ACTION.fetch(opponent_symbol)
  end

  def parse_action(opponent_symbol, symbol)
    OPPONENT_SYMBOL_AND_SYMBOL_TO_ACTION.fetch([opponent_symbol, symbol])
  end
end
