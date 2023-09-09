require './shape_builder'
require 'pry'

RSpec.describe "#build" do
  subject { ShapeBuilder.new(opponent_shape, result).build }
  
  context "if opponent choose rock" do
    let(:opponent_shape) { :rock }

    context 'I need to have a draw' do
      let(:result) { :draw } 

      it "should choose a rock " do
        expect(subject).to eq(:rock)
      end
    end

    context 'opponent will choose paper' do
      let(:opponent_shape) { :paper }

        context 'I will lose this round'
        let(:result) { :loss }

        it "should choose rock" do
          expect(subject).to be(:rock)
        end
      end
    end

    context 'my opponent has scizzors' do
      let(:opponent_shape) { :scissors }

      context 'I will win this round' do
        let(:result) { :win }

        it "should choose rock" do
          expect(subject).to eq(:rock)
        end
      end 
    end
  end