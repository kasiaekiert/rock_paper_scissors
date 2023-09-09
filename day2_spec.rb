require './day2'
require 'pry'

RSpec.describe "#counter" do
  describe 'score after first round' do
    subject { OneRound.new(opponent, mychoice).counter }
  
      context "if opponent choose rock" do
        let(:opponent) { :rock }

        context 'my choice was a paper' do
          let(:mychoice) { :paper } 
          #2+

          it "should have score '8' " do
            expect(subject).to eq(8)
          end
        end

        context 'my choice was rock' do
          let(:mychoice) { :rock }

          it "should have score '4'" do
            expect(subject).to eq(4)
          end
        end

        context 'my opponent has scizzors' do
          let(:mychoice) { :scissors }

          it "should have score '3'" do
            expect(subject).to eq(3)
          end
        end
      end

      # context "if I choose paper and my opponent choose rock" do
      #   let(:mychoice) { "B" } 
      #   let(:opponent) { "X" }

      #   it "should have score '1'" do
      #     expect(subject).to eq(1)
      #   end
      # end

      # context "if both choose scizzors" do
      #   let(:mychoice) { "C" } 
      #   let(:opponent) { "Z" }

      #   it "should have score '6'" do
      #     expect(subject).to eq(6)
      #   end
      # end

      # context "if I choose scizzors and my opponent choose paper" do
      #   let(:mychoice) { "C" } 
      #   let(:opponent) { "Y" }

      #   it "should have score '8'" do
      #     expect(subject).to eq(9)
      #   end
      # end

  end
end