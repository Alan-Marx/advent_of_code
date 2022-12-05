class RockPaperScissors::Game
  autoload :Round, File.expand_path('./game/round.rb', __dir__)
  autoload :Action, File.expand_path('./game/action.rb', __dir__)

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def score
    rounds.sum(&:score)
  end

  private

  def rounds
    lines.collect do |row|
      opponent_action, action = row.split.collect { |action| Action.new(action) }
      Round.new(opponent_action, action)
    end
  end

  def lines
    File.readlines(path, chomp: true)
  end
end
