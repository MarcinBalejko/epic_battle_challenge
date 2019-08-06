require 'attack1'

describe Attack1 do
    subject(:object) { described_class }
    let(:player) { double :player }
    describe '.run' do
        it 'damages the player' do
            expect(player).to receive(:receive_damage_a1)
            object.run(player)
        end
    end
end