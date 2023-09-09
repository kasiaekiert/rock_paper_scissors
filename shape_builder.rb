require 'pry'

class ShapeBuilder
  SHAPE_FOR_LOSE = { :rock => :scissors, :paper => :rock, :scissors => :paper}.freeze 

  def initialize(a,b)
    @opponent_shape = a
    @result = b
  end

  def build
    if @result == :draw
      return @opponent_shape
    elsif @result == :loss 
      SHAPE_FOR_LOSE[@opponent_shape]
    elsif @result == :win
      win
    end
  end

  private

  def win
    case @opponent_shape 
      when :paper
       :scissors
      when :rock
       :paper
      when :scissors
       :rock
    end
  end

end
