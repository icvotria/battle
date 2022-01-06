require 'player'

describe 'Player' do
  subject(:rambo) { Player.new('Rambo') }
  it 'returns its name' do
    expect(rambo.name).to eq 'Rambo'
  end
end
