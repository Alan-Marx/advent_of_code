module AdventOfCode::RockPaperScissors
  autoload :Round, ::File.expand_path('./rock_paper_scissors/round.rb', __dir__)
  autoload :StrategyParser, ::File.expand_path('./rock_paper_scissors/strategy_parser.rb', __dir__)
end
