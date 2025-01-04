#!/usr/bin/env ruby

def fibonacci(num)
  return unless num >= 1

  yield 1
  a = 1
  b = 1
  while b <= num
    yield b
    b += a
    a = b - a
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  num = ARGV[0].to_i
  fibonacci(num) { |val| print "#{val} " }
end
