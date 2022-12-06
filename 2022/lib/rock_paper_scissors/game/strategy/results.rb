class RockPaperScissors::Game::Strategy::Results < RockPaperScissors::Game::Strategy
  OPPONENT_ACTION_AND_STRATEGY_VALUE_TO_ACTION = {
    ["A", "X"] => "C",
    ["A", "Y"] => "A",
    ["A", "Z"] => "B",
    ["B", "X"] => "A",
    ["B", "Y"] => "B",
    ["B", "Z"] => "C",
    ["C", "X"] => "B",
    ["C", "Y"] => "C",
    ["C", "Z"] => "A"
  }.freeze

  private

  def action
    OPPONENT_ACTION_AND_STRATEGY_VALUE_TO_ACTION.fetch([opponent_action, strategy_value])
  end
end
