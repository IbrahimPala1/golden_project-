# frozen_string_literal: true

# defines it here
def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub(" ", "").chars.each do |char|
    binding.irb
    counter[char] += 1
  end
  counter.to_a.max_by { |k, v| v }[0]
ends
puts get_most_common_letter "The roof, the roof, the roof is on fire!"

# Intended output:
#
# > get_most_common_letter("the rf, the rf, the rf is on fire!")
# => "o"
