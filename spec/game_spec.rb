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

    describe '#current turn' do
        it 'starts as player 1' do
            expect(game.current_turn).to eq player_1
        end
    end

    describe '#switch_turns' do
        it 'switches the turn' do
            game.switch_turns
            expect(game.current_turn).to eq player_2
        end
    end
    
    describe '#opponent_of' do
        it 'finds the opponent of a player' do
            expect(game.opponent_of(player_1)).to eq player_2
            expect(game.opponent_of(player_2)).to eq player_1
        end
    end
end