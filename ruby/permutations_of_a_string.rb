# my_array = %w[a b c d]

my_array = %w[a b c]
# this will ouput
# 27 permutations
# aaa, aab, aac, aba, abb, abc, aca, acb, acc,
# baa, bab, bac, bba, bbb, bbc, bca, bcb, bcc,
# caa, cab, cac, cba, cbb, cbc, cca, ccb, ccc

array_size = my_array.size

# Time complexity would be O(N^N)
# Space complexity would be O(N)
def concatenate_elements(value, current_array, size)
  current_array.each do |next_value|
    if value.size == size - 1
      @permutation_strings << "#{value}#{next_value}"
    else
      concatenate_elements("#{value}#{next_value}", current_array, size)
    end
  end
end

@permutation_strings = []
my_array.each do |value|
  concatenate_elements(value, my_array, array_size)
end

puts @permutation_strings.size
puts @permutation_strings.join(', ')
