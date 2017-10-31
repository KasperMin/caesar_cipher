dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings word_or_sentence, dictionary
  string_array = word_or_sentence.split(' ')
  clean_array = []
  matches = []
  occurences = Hash.new 0

  string_array.each do |element|
    clean_array.push(element.gsub(/\W[^.]*/, '');
    clean_array.push(downcase_char)
  end
  clean_array = clean_array.join("")

  dictionary.each do |dictionary_word|
    regexp_word = Regexp.new(dictionary_word)
    clean_array.scan(regexp_word) {|match| matches << match}
  end

  matches.each do |word|
    occurences[word] +=1
  end

  occurences

end


substrings "Howdy partner, sit down! How's it going?", dictionary
