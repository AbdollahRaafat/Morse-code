def decode_letter(letter)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse[letter]
end

def decode_word(word)
  arr = word.split

  result = ''
  arr.each do |letter|
    result += decode_letter(letter)
  end
  result
end

def decode_message(message)
  arr = message.split('   ')
  result = ''
  arr.each do |word|
    result += "#{decode_word(word)} "
  end

  result
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
test = '-.-- --- ..- .-.   -. .- -- .   .. ...   -- . .-. ...- .- -'
puts decode_message(message)
puts decode_message(test)
