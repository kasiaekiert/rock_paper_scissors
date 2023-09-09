require 'pry'

class OneRound
  MYCHOICE_VALUES = { :paper => 2, :rock => 1, :scissors => 3 }.freeze
  ROUND_COUNTER_FOR_ROCK = { :rock => 3, :scissors => 6 }.freeze
  ROUND_COUNTER_FOR_PAPER = { :paper => 3, :rock => 6 }.freeze
  ROUND_COUNTER_FOR_SCISSORS = { :paper => 6, :scissors => 3 }.freeze

  def initialize(a,b)
    @opponent = a
    @mychoice = b
  end

  def counter
    shape_counter + round_counter
  end

  private 
  
  def shape_counter
    MYCHOICE_VALUES[@mychoice] || 0
  end
  
  def round_counter
    return ROUND_COUNTER_FOR_ROCK[@opponent] || 0 if @mychoice == :rock
    return ROUND_COUNTER_FOR_PAPER[@opponent] || 0 if @mychoice == :paper
    return ROUND_COUNTER_FOR_SCISSORS[@opponent] || 0 if @mychoice == :scissors
  end 
end
