def caesar_cipher(string, key)
  alphabet = ('a'..'z').to_a
  result = ''
  string.split('').each do |letter|
    if alphabet.include?(letter.downcase)
      value = alphabet[(alphabet.index(letter.downcase) + key) % alphabet.size]
      letter == letter.downcase ? result += value : result += value.upcase
    else
      result += letter
    end
  end
  result
end

# Test case
p caesar_cipher('What a string!', 5) == 'Bmfy f xywnsl!'