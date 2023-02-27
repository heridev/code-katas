# replace all the vowals with an asterisk
puts 'hello'.gsub(/[aieou]/, '*')

# replace all characters except vowals
puts 'hello'.gsub(/[^aieou]/, '*')
# iterate through the matches
puts 'hello'.gsub(/[aeiou]/) { |match| match.upcase }

# searching spaces
# puts 'hello hola hola     yes'.gsub(/\S+/) { |_match| '*' }
puts 'hello hola hola     yes'.gsub(/\s./, '<space>')
