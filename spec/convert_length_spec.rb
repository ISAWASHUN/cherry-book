require_relative '../lib/convert_length.rb'

RSpec.describe 'ConvertLength' do
  describe '.convert_length' do
    it 'converts from meters to inches' do
      expect(convert_length(1, from: :m, to: :in)).to eq 39.37
    end

    it 'converts from inches to meters' do
      expect(convert_length(15, from: :in, to: :m)).to eq 0.38
    end

    it 'converts from feet to meters' do
      expect(convert_length(35000, from: :ft, to: :m)).to eq 10670.73
    end
  end
end
