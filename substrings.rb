dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings word_or_sentence, dictionary
  string_array = word_or_sentence.split(' ');
  regexp_array = [];
  occurences = Hash.new 0

  string_array.each do |element|
    downcase_lement_minus_nonAlpha_char = element.downcase.gsub(/\W[^.]*/, '');
    word_to_regexp = Regexp.new(downcase_lement_minus_nonAlpha_char)
    regexp_array.push(word_to_regexp)
  end

  regexp_array.each do |regexp_word|
    matches = dictionary.join().scan regexp_word
    matches.each do |word|
      occurences[word] +=1
    end
  end
  puts occurences.inspect
end


substrings "Howdy partner, sit down! How's it going?", dictionary
