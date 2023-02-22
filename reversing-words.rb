# require 'test/unit'

describe 'Solution' do
  it 'Fixed tests' do
    Test.assert_equals(reverse_words('The quick brown fox jumps over the lazy dog.'),
                       'ehT kciuq nworb xof spmuj revo eht yzal .god')
    Test.assert_equals(reverse_words('apple'), 'elppa')
    Test.assert_equals(reverse_words('a b c d'), 'a b c d')
    Test.assert_equals(reverse_words('double  spaced  words'), 'elbuod  decaps  sdrow')
    Test.assert_equals(reverse_words('stressed desserts'), 'desserts stressed')
    Test.assert_equals(reverse_words('hello hello'), 'olleh olleh')
  end

  it 'Random Tests' do
    words = ['Kata', 'should', 'always', 'have', 'random', 'tests', 'case', 'to', 'avoid', 'hardocoded', 'solution.',
             'This', 'is', 'a', 'rule!']

    40.times do
      str = words.sample(rand(words.length)).join(' ' * rand(1..2))
      exp = str.split(/\s{1}/).map { |w| w.reverse }.join(' ')
      Test.assert_equals(reverse_words(str), exp, "Testing for reverse_Words(#{str.inspect})")
    end
  end
end
