require_relative 'player'
class Game
    attr_reader :players
    def initialize(player_1)
        @players = player_1 
    end
end