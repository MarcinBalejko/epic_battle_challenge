require_relative 'game'
class Player
    attr_reader :choice
    def initialize
        @choice = nil
    end
    def make_choice(player_choice)
        @choice = player_choice
    end
end