require_relative 'game'
class Player
    DEFAULT_HIT_POINTS = 30 
    attr_reader :choice, :choice_attack, :hit_points, :characters
    def initialize(hit_points = DEFAULT_HIT_POINTS)
        @choice = nil
        @choice_attack = nil
        @characters = ["Peter", "Chicken"]
        @attacks_peter = ["PUNCH", "SMASH", "LAUGH" ]
        @attacks_chicken = ["PUNCH", "SMASH", "DIRTY LOOK"]
        @hit_points = hit_points  
    end
    def make_choice(player_choice)
        @choice = player_choice
    end


    def cpu_make_choice
        @choice = @characters.sample   
    end
    
    def cpu_make_attack
        if @choice == "Peter"
            @choice_attack = @attacks_peter.sample
        elsif @choice == "Chicken"
            @choice_attack = @attacks_chicken.sample
        end
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