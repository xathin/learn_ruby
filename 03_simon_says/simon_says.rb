def echo(say)
  return say
end

def shout(yell)
  return yell.upcase
end

def repeat(message, many = 2)
  output = message
  many = many - 1
  many.times { output = output + ' ' + message }
  return output
end

def start_of_word(word, value)
  return word[0, value]
end

def first_word(sentence)
  return sentence.split(' ')[0]
end

def titleize(sentence)
  little_words = %w(and it the over)
  words = sentence.split(' ').map.with_index { |w, idx| idx == 0 ? w.capitalize : little_words.include?(w) ? w : w.capitalize }
  return words.join(' ')
end
