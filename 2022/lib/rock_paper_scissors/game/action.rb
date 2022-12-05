class RockPaperScissors::Game::Action
  attr_reader :letter

  def initialize(letter)
    @letter = letter
  end

  def beats?(action)
    case type
    when :rock then action.type == :scissor
    when :paper then action.type == :rock
    when :scissor then action.type == :paper
    end
  end

  def draws?(action)
    type == action.type
  end

  def score
    case type
    when :rock then 1
    when :paper then 2
    when :scissor then 3
    end
  end

  def type
    @type ||=
      case letter
      when 'A', 'X' then :rock
      when 'B', 'Y' then :paper
      when 'C', 'Z' then :scissor
      end
  end
end
