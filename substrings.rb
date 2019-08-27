def substrings(string, dictionary)
  result = {}
  dictionary.each do |word|
    for i in 0...string.size
      for j in 1..string.size - i
        substring = string.slice(i,j)
        if word == substring
          result[word] ? result[word] += 1 : result[word] = 1
        end
      end
    end
  end
  result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)