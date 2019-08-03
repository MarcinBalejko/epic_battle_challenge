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

    def opponent_of(player)
        players_who_are_not(player).first
    end

    def switch_turns
        @current_turn = opponent_of(current_turn)
    end

    private
    attr_reader :players

    def players_who_are_not(the_player)
        players.select { |player| player != the_player }
    end

end