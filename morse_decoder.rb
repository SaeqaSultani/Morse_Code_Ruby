# Function to decode into a character
def decode_character(string)
morse_code_hash = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}
morse_code_hash[string]
end

puts decode_character('.')

# Function to decode into a word
def decode_to_word(string)
  string_arr = string.split
  final_string = ''
  string_arr.each { |char| final_string += decode_character(char) }
  "#{final_string}"
end

puts decode_to_word("-- -.--")

# Function to decode into a sentence
def decoder(str)
  arr_of_words = str.split('   ')
  final_sentence = ''
  arr_of_words.each do |word|
    final_sentence += decode_to_word(word)
  end
  puts final_sentence
end
print decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')