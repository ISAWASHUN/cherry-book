require_relative '../lib/gate.rb'
require_relative '../lib/ticket.rb'
require 'rspec'

RSpec.describe Gate do
  before do
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  describe '#exit' do
    context 'from umeda to juso' do
      it 'allows exit with a ticket of 160 yen' do
        ticket = Ticket.new(160)
        @umeda.enter(ticket)
        expect(@juso.exit(ticket)).to be_truthy
      end
    end

    context 'from umeda to mikuni with insufficient fare' do
      it 'does not allow exit with a ticket of 160 yen' do
        ticket = Ticket.new(160)
        @umeda.enter(ticket)
        expect(@mikuni.exit(ticket)).to be_falsey
      end
    end
  end
end
