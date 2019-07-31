require 'player'
describe Player do
    describe '#choice' do
        it 'player can make choice' do
            subject.make_choice("rock")
            expect(subject.choice).to eq "rock"
        end
    end
end