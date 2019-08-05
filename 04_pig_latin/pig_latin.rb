def translate(message)
  words = message.split(' ')
  words.map! { |word| 
    while not word.start_with?('a', 'e', 'i', 'o', 'u')
      word = word[1,word.size] + word[0]
    end
    if word[0] == 'u' and word[-1] == 'q'
      word = word[1,word.size] + word[0]
    end
    word + 'ay'
  }
  return words.join(' ')
end
