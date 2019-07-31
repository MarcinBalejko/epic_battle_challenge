require 'game'
describe Game do 
    subject(:game) { described_class.new(player_1) }
    let(:player_1) { Player.new('Dave') }
    it 'retrieves Player 1' do
        expect(subject.players).to eq(player_1)
    end
end