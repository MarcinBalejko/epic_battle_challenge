require_relative 'player'
class Game
    attr_reader :current_turn
    def initialize(player_1, player_2)
        @players = [player_1, player_2]
        @current_turn = player_1
    end
    def player_1
        @players.first
    end
    def player_2
        @players.last
    end



end