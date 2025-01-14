# Implementing a class to replace the vowels with star
class VowelReplacer
  VOWEL_REGEX = /[aeiou]/i.freeze
  def initialize(input_val)
    @input_val = input_val
  end

  def replace_with_star
    @input_val.gsub(VOWEL_REGEX, '*')
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  replace_vowel_obj = VowelReplacer.new ARGV[0]
  puts replace_vowel_obj.replace_with_star
end
