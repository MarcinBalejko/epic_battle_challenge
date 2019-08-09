require 'game'
describe Game do 
    subject(:game) { described_class.new(player_1, player_2) }
    subject(:finished_game) { described_class.new(dead_player, player_2) }
    subject(:finished_game_winner) { described_class.new(dead_player, player_winner) }
    let(:player_winner) { double :player, hit_points: 10 }
    let(:player_1) { Player.new }
    let(:player_2) { Player.new }
    let(:dead_player) { double :player, hit_points: 0 }

    describe '#player_1' do
        it 'retrieves Player 1' do
            expect(game.player_1).to eq(player_1)
        end
    end

    describe '#player_2' do 
        it 'retrieves Player 2' do
            expect(game.player_2).to eq(player_2)
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

    describe '#game_over?' do
        it 'returns false if no-one is at 0HP' do
            expect(game.game_over?).to be false
        end
        it 'returns true if at least one player is at 0HP' do
            expect(finished_game.game_over?).to be true
        end
    end
    describe '#loser' do
        it 'returns a player on less than 0HP' do
            expect(finished_game.loser).to eq dead_player
        end
    end
    describe '#winner' do
        it 'returns a player on more than 0HP' do
            expect(finished_game_winner.winner).to eq player_winner
        end
    end

end