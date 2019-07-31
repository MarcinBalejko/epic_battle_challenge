require 'game'
describe Game do 
    subject(:game) { described_class.new(player_1, player_2) }
    let(:player_1) { Player.new }
    let(:player_2) { Player.new }

    describe '#player_1' do
        it 'retrieves Player 1' do
            expect(subject.player_1).to eq(player_1)
        end
    end

    describe '#player_2' do 
        it 'retrieves Player 2' do
            expect(subject.player_2).to eq(player_2)
        end
    end
end