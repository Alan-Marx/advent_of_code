class RockPaperScissors::Game::Action
  TYPE = {
    'A' => :rock,
    'B' => :paper,
    'C' => :scissor
  }.freeze

  SCORE = {
    rock: 1,
    paper: 2,
    scissor: 3
  }.freeze

  BEATS = {
    rock: :scissor,
    paper: :rock,
    scissor: :paper
  }.freeze

  attr_reader :type

  def initialize(letter)
    @type = TYPE.fetch(letter)
  end

  def beats?(action)
    BEATS.fetch(type) == action
  end

  def draws?(action)
    type == action.type
  end

  def score
    SCORE.fetch(type)
  end
end
