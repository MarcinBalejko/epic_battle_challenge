require_relative 'game'
class Player
    DEFAULT_HIT_POINTS = 100
    attr_reader :choice, :hit_points
    def initialize(hit_points = DEFAULT_HIT_POINTS)
        @choice = nil
        @hit_points = hit_points
    end
    def make_choice(player_choice)
        @choice = player_choice
    end
    def receive_damage
        @hit_points -= rand(1..10)
    end
end