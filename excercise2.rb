#!/usr/bin/env ruby

if ARGV.empty?
  puts 'Please provide an input'
else
  input = ARGV[0]
  puts input.gsub(/a|e|i|o|u/, '*')
end
