class RockPaperScissors::Game::Strategy::Actions < RockPaperScissors::Game::Strategy
  STRATEGY_VALUE_TO_ACTION = { 'X' => 'A', 'Y' => 'B', 'Z'=> 'C' }.freeze

  private

  def action
    STRATEGY_VALUE_TO_ACTION.fetch(strategy_value)
  end
end
