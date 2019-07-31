require 'player'
describe Player do
    subject(:dave) { Player.new('Dave') }
    describe '#name' do
        it 'returns the name' do
            expect(dave.name).to eq 'Dave'
        end
    end
    describe '#choice' do
        it 'player can make choice' do
            dave.make_choice("rock")
            expect(dave.choice).to eq "rock"
        end
    end
end