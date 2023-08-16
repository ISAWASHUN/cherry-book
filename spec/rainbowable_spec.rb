require_relative '../lib/rainbowable'

RSpec.describe 'Rainbowable' do
  before do
    String.include Rainbowable
    Array.include Rainbowable
  end

  describe '#rainbow' do
    it 'returns a rainbow-colored string' do
      expected = "\e[31mH\e[32me\e[33ml\e[34ml\e[35mo\e[36m,\e[31m \e[32mw\e[33mo\e[34mr\e[35ml\e[36md\e[31m!\e[0m"
      expect('Hello, world!'.rainbow).to eq(expected)
    end

    it 'returns a rainbow-colored array' do
      expected = "\e[31m[\e[32m1\e[33m,\e[34m \e[35m2\e[36m,\e[31m \e[32m3\e[33m]\e[0m"
      expect([1, 2, 3].rainbow).to eq(expected)
    end
  end
end
