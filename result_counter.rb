require './shape_builder'
require './one_round'

class GameCounter
  RESULT = { "X" => :loss, "Y" => :draw, "Z" => :win }.freeze
  OPPONENT = { "A" => :rock, "B" => :paper, "C" => :scissors }.freeze
  
  def score_counter
    File.readlines('day_2_input.txt').map do |results|
      opponent_shape, result = results.split
      mychoice = ShapeBuilder.new(OPPONENT[opponent_shape],RESULT[result]).build
      OneRound.new(OPPONENT[opponent_shape], mychoice).counter
    end
  end
end

puts GameCounter.new.score_counter.sum

# puts OneRound.counter(OPPONENT[opponent_shape], mychoice).sum