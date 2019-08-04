require 'player'
describe Player do
    describe '#choice' do
        it 'player can make choice' do
            subject.make_choice("rock")
            expect(subject.choice).to eq "rock"
        end
    end
    describe '#hitpoints' do
        it 'Has a default hit points amount' do
            expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end
end