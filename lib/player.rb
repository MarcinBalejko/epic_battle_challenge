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
    def receive_damage_a1
        @hit_points -= 10
    end
    def receive_damage_a2
        @hit_points -= 20
    end
    def receive_damage_a3
        @hit_points -= 30
    end
end