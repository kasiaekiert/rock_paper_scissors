require './one_round'

class GameCounter
  MYCHOICE = { "X" => :rock, "Y" => :paper, "Z" => :scissors }.freeze
  OPPONENT = { "A" => :rock, "B" => :paper, "C" => :scissors }.freeze
  
  def score_counter
    File.readlines('day_2_input.txt').map do |results|
      a, b = results.split
      b = map_mychoice(b)
      a = opponent_choice(a)
      OneRound.new(a,b).counter
    end
  end

  def map_mychoice(b)
    MYCHOICE[b]
  end

  def opponent_choice(a)
    OPPONENT[a]
  end
end

puts GameCounter.new.score_counter.sum
