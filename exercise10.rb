# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here

# Implementing a string method to convert an array input as string to an array
class String
  def to_array
    delete("[']").split(',')
  end
end

# Implementation of grouping array on the basis of elements' length
class GroupArray
  def initialize(input_array)
    @arr = input_array.map(&:to_s)
  end

  def group_by_length
    result = @arr.inject({ 'odd' => {}, 'even' => {} }) do |hash, element|
      key = element.length.odd? ? 'odd' : 'even'
      (hash[key][element.length] ||= []) << element
      hash
    end
    result.each { |key, value| result[key] = value.values }
    result.reject { |_, value| value == [] }
  end
end

if ARGV.empty?
  puts 'Please provide an input'

else
  input_arr = ARGV[0].to_array
  grouped_array = GroupArray.new(input_arr)
  puts grouped_array.group_by_length
end
