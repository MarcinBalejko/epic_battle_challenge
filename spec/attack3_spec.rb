require 'attack3'

describe Attack3 do
    subject(:object) { described_class }
    let(:player) { double :player }
    describe '.run' do
        it 'damages the player' do
            expect(player).to receive(:receive_damage_a3)
            object.run(player)
        end
    end
end