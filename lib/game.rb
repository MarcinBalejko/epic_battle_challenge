require_relative 'player'
class Game
    attr_reader :current_turn, :players, :single_player
    def initialize(player_1, player_2)
        @players = [player_1, player_2]
        @current_turn = player_1
        @single_player = false
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

    def game_over?
        losing_players.any?
    end
    
    def winner
        winning_players.first
    end

    def loser
        losing_players.first
    end

    def single_player_mode
        @single_player = true
    end

    private
    attr_reader :players

    def winning_players
        players.select { |player| player.hit_points > 0 }
    end

    def losing_players
        players.select { |player| player.hit_points <= 0 }
    end

    def players_who_are_not(the_player)
        players.select { |player| player != the_player }
    end

end