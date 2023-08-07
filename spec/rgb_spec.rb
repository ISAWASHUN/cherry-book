require_relative '../lib/rgb.rb'

RSpec.describe 'RGB' do
  describe '#to_hex' do
    it 'converts RGB values to hexadecimal' do
      expect(to_hex(0,0,0)).to eq '#000000'
      expect(to_hex(255, 255, 255)).to eq '#ffffff'
      expect(to_hex(4, 60, 120)).to eq '#043c78'
    end
  end

  describe '#to_ints' do
    it 'converts hexadecimal to RGB values' do
      expect(to_ints('#000000')).to eq [0,0,0]
      expect(to_ints('#ffffff')).to eq [255,255,255]
      expect(to_ints('#043c78')).to eq [4, 60, 120]
    end
  end
end