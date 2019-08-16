require_relative 'game'
class Player
    DEFAULT_HIT_POINTS = 20  #CHANGED FROM 100
    attr_reader :choice, :hit_points, :choice_attack
    def initialize(hit_points = DEFAULT_HIT_POINTS)
        @choice = nil
        @choice_attack = nil
        @hit_points = hit_points
    end
    def make_choice(player_choice)
        @choice = player_choice
    end
    def make_attack(attack)
        @choice_attack = attack
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