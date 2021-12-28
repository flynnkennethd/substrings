def substrings(string, dictionary)
  answer = {}
  dictionary.each do |word|
    answer[word] = string.downcase.scan(word).length if string.downcase.scan(word).length > 0
  end
  answer
end