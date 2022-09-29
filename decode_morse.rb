def decode_letter(letter)
  case letter
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'J'
  when '-.-'
    'K'
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  end
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
test = '..     .- --     .- -... -.. --- .-.. .-.. .- ....     .-. .- .- ..-. .- -     ..-. .-. --- --     . --. -.-- .--. -'
puts decode_message(message)
puts decode_message(test)
