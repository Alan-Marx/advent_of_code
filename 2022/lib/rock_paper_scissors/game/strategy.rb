class RockPaperScissors::Game::Strategy
  autoload :Actions, File.expand_path('./strategy/actions.rb', __dir__)
  autoload :Results, File.expand_path('./strategy/results.rb', __dir__)

  def self.parse(...)
    new(...).parse
  end

  attr_reader :opponent_action, :strategy_value

  def initialize(values)
    @opponent_action, @strategy_value = values
  end

  def parse
    [opponent_action, action].collect { RockPaperScissors::Game::Action.new(_1) }
  end

  private

  def action
    raise NotImplementedError
  end
end
