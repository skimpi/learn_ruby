def translate(string)
    vowels = %w{a e i o u}
    phrase = string.split(" ")
    phrase.map! do |word|
      letters = word.split("")
      find_vowel = letters.index do |letter|
        vowels.include?(letter)
      end
      #turn "square" into "aresquay"
      if letters[find_vowel] == "u"
        find_vowel += 1
      end
      letters.rotate!(find_vowel)
      letters.push("ay")
      letters.join
  
     end
  
  return phrase.join(" ")
  end