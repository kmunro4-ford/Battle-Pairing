require 'player'

describe Player do
  subject(:kelvin) { Player.new('Kelvin') }
  subject(:mike) { Player.new('Mike') }

  describe '#name' do
    it 'returns the name' do
      expect(kelvin.name).to eq 'Kelvin'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(kelvin.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(Mike).to receive(:receive_damage)
      kelvin.attack(mike)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { kelvin.receive_damage }.to change { kelvin.hit_points }.by(-10)
    end
  end
 end
