def caesar_cipher(string, shift = 1)
  alphabet  = ('a'..'z').to_a
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = ('A'..'Z').to_a
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  result = string.chars.map { |c| encrypter.fetch(c, c) }
  return result.join  
end

def run_cipher

    puts "Enter a msg to encrpyt"
    msg = gets.chomp
    msg = caesar_cipher(msg)
    
    puts "Enter value to shift? (Auto shifts by 1. ex for 3 enter 2)"
    shift = gets.to_i

    puts caesar_cipher(msg, shift)
end

run_cipher()