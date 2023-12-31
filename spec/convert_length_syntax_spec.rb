require_relative '../lib/convert_hash_syntax.rb'

RSpec.describe 'ConvertHashSyntax' do
  describe '#convert_hash_syntax' do
    it 'converts old hash syntax to new hash syntax' do
      old_syntax = <<~TEXT
        {
          :name => 'Alice',
          :age => 20,
          :gender => :female
        }
      TEXT
      expected = <<~TEXT
        {
          name: 'Alice',
          age: 20,
          gender: :female
        }
      TEXT
      expect(convert_hash_syntax(old_syntax)).to eq expected
    end
  end
end
