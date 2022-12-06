class RockPaperScissors::Game::Round
  attr_reader :opponent_action, :action

  def initialize(actions)
    @opponent_action, @action = actions
  end

  def score
    outcome_score + action.score
  end

  private

  def outcome_score
    if action.beats?(opponent_action)
      6
    elsif action.draws?(opponent_action)
      3
    else
      0
    end
  end
end
