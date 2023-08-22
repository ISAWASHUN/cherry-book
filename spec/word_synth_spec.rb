require_relative '../lib/word_synth.rb'
require_relative '../lib/effects.rb'

RSpec.describe WordSynth do
  describe '#play' do
    let(:synth) { WordSynth.new }

    context 'without effects' do
      it 'returns the original word' do
        expect(synth.play('Ruby is fun!')).to eq 'Ruby is fun!'
      end
    end

    context 'with reverse effect' do
      before { synth.add_effects(Effects.reverse) }

      it 'reverses each word in a string' do
        expect(synth.play('Ruby is fun!')).to eq 'ybuR si !nuf'
      end
    end

    context 'with many effects' do
      before do
        synth.add_effects(Effects.echo(2))
        synth.add_effects(Effects.loud(2))
        synth.add_effects(Effects.reverse)
      end

      it 'applies all effects to the string' do
        expect(synth.play('Ruby is fun!')).to eq '!!YYBBUURR !!SSII !!!!NNUUFF'
      end
    end
  end
end
