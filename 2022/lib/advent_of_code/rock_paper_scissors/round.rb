class AdventOfCode::RockPaperScissors::Round
  OUTCOMES = {
    [:rock, :paper]      => :win,
    [:paper, :scissor]   => :win,
    [:scissor, :rock]    => :win,
    [:rock, :rock]       => :draw,
    [:paper, :paper]     => :draw,
    [:scissor, :scissor] => :draw,
    [:rock, :scissor]    => :loss,
    [:paper, :rock]      => :loss,
    [:scissor, :paper]   => :loss
  }.freeze

  OUTCOME_TO_POINTS = {
    win:  6,
    draw: 3,
    loss: 0
  }.freeze

  BONUS_POINTS_BY_ACTION = {
    rock:    1,
    paper:   2,
    scissor: 3
  }.freeze

  attr_reader :opponent_action, :action

  def initialize(*actions)
    @opponent_action, @action = Array(actions)
  end

  def score
    OUTCOME_TO_POINTS.fetch(outcome) + BONUS_POINTS_BY_ACTION.fetch(action)
  end

  private

  def outcome
    OUTCOMES.fetch([opponent_action, action])
  end
end
