class Attack2
    def initialize(player)
        @player = player
    end
    def self.run(player)
        new(player).run
    end
    def run
        @player.receive_damage_a2
    end
end