require_relative '../lib/effects.rb'

RSpec.describe Effects do
  describe '.reverse' do
    it 'reverses each word in a string' do
      effect = Effects.reverse
      expect(effect.call('Ruby is fun!')).to eq 'ybuR si !nuf'
    end
  end

  describe '.echo' do
    context 'when given a factor of 2' do
      it 'doubles each character in a string' do
        effect = Effects.echo(2)
        expect(effect.call('Ruby is fun!')).to eq 'RRuubbyy iiss ffuunn!!'
      end
    end

    context 'when given a factor of 3' do
      it 'triples each character in a string' do
        effect = Effects.echo(3)
        expect(effect.call('Ruby is fun!')).to eq 'RRRuuubbbyyy iiisss fffuuunnn!!!'
      end
    end
  end

  describe '.loud' do
    context 'when given a level of 2' do
      it 'converts the string to uppercase and adds exclamation marks' do
        effect = Effects.loud(2)
        expect(effect.call('Ruby is fun!')).to eq 'RUBY!! IS!! FUN!!!'
      end
    end

    context 'when given a level of 3' do
      it 'converts the string to uppercase and adds more exclamation marks' do
        effect = Effects.loud(3)
        expect(effect.call('Ruby is fun!')).to eq 'RUBY!!! IS!!! FUN!!!!'
      end
    end
  end
end
