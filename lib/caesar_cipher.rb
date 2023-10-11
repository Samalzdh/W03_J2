def letter_cipher (letter, n)
  ascii = letter.ord #transform la lettre en code ascii
  if letter =~ /[A-Z]/
    shifted_letter = (ascii - 65 + n)%26 + 65 # code ascii + 65 pour revenir a 0, on rajoute n pour le decalage on recupere le modulo pour rester dans les clou et on rajoute 65 pour revenir au bout numero asci
  elsif letter =~ /[a-z]/
    shifted_letter = (ascii - 97 + n)%26 + 97
  else
      return letter #pas mal pour les signes de ponctuations par ex
  end
  shifted = shifted_letter.chr
  return shifted
end

def word_cipher(word, n)
  shifted_word =""
  word.each_char do |letter|
    shifted_letter = letter_cipher(letter , n)
    if shifted_letter
      shifted_word += shifted_letter
    else
      shifted_word += letter
    end
  end
  
  return shifted_word
end

def caesar_cipher(str , n)
 words = str.split(" ")
    shifted_words = words.map do |word| 
      if word =~ /\p{Alpha}/
        word_cipher(word, n)
      else
        word
    end
  end
  shifted_sentence = shifted_words.join(" ")
end

