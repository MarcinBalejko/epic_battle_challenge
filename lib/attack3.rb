class Attack3
    def initialize(player)
        @player = player
    end
    def self.run(player)
        new(player).run
    end
    def run
        @player.receive_damage_a3
    end
end