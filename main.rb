def caesar_cipher word, key
  if key >= 26
    puts 'Invalid number!!! Please enter a number less than 26.'
  else
      word_into_letters = word.split("")
      alphabet = ('a'..'z').to_a
      new_word_by_index = []
      cipher_word = []

      word_into_letters.each do |letter_word|
        alphabet.each do |letter_alphabet|
          if letter_word == letter_alphabet
             index_number = alphabet.index(letter_word)
             z_convert = index_number + key
             unless z_convert >= 26
               new_index_number = index_number + key
               new_word_by_index.push(new_index_number)
             else
               z_index = z_convert - 26
               new_word_by_index.push(z_index)
             end
          end
        end
      end

      new_word_by_index.each do |index|
         cipher_word.push(alphabet[index])
      end

      cipher_word.join
  end
end
