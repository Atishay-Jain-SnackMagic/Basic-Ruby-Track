# Solution to Basic Ruby Exercise 2 for replacing vowels with '*'
class VowelReplacer
  def initialize(input_val)
    @input_val = input_val
  end

  def replace_vowel
    @input_val = @input_val.gsub(/a|e|i|o|u/i, '*')
  end
end
if ARGV.empty?
  puts 'Please provide an input'
else
  solution = VowelReplacer.new ARGV[0]
  puts solution.replace_vowel
end
