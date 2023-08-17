print 'TEXT?:'
text = gets.chomp

begin
  print 'Pattern?:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue => e
  puts "Invalid pattern: #{e.message}"
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Method: #{mathes.join(', ')}"
end