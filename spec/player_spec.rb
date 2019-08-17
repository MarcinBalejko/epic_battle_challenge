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
        it 'returns the hit points' do
            expect(subject.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
    end
    describe '#cpu_make_choice' do
        it 'selects random character' do
            subject.cpu_make_choice
            expect(["Peter","Chicken"]).to include(subject.choice)
        end
    end
    describe '#cpu_make_attack' do
        it 'makes random attack' do
            subject.cpu_make_choice
            subject.cpu_make_attack
            expect(["PUNCH","KICK", "LAUGH","DIRTY LOOK"]).to include(subject.choice_attack)
        end
    end
end