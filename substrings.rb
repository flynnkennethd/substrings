def substrings(string, sample)
  matches = Hash.new(0)
  sample.each do |word|
    matches[word] += string.downcase.scan(word).length if string.downcase.scan(word).length > 0
  end
  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)