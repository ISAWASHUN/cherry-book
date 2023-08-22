require_relative '../lib/log_formatter.rb'

RSpec.describe LogFormatter do
  describe '.format_log' do
    let(:text) { LogFormatter.format_log }
    let(:lines) { text.lines(chomp: true) }

    it 'formats the log correctly' do
      expect(lines[0]).to eq '[OK] request_id=1, path=/products/1'
      expect(lines[1]).to eq '[ERROR] request_id=2, path=/wp-login.php, status=404, error=Not found'
      expect(lines[2]).to eq '[WARN] request_id=3, path=/products, duration=1023.8'
      expect(lines[3]).to eq '[ERROR] request_id=4, path=/dangerous, status=500, error=Internal server error'
    end
  end
end
