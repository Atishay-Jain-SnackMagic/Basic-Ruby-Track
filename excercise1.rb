#!/usr/bin/env ruby

if ARGV.empty?
  puts "Please provide an input"
else
  input = ARGV[0]
  freq = Hash.new(0)

  input.each_char do |char|
    if char.match(/[A-Za-z]/)
      freq[char] += 1
    end
  end
  puts freq
end
