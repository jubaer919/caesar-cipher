def caesar_cipher(str, num)
  alfabet = ('a'..'z').to_a
  result = []

  num = num % alfabet.length

  rotate_arr = alfabet[-num..-1] + alfabet[0..-num]

  i = 0

  while i < str.length
    if str[i] == " "
      result.push(" ")
    else
      index = alfabet.index(str[i].downcase)

      if str[i] == str[i].upcase
        result.push(rotate_arr[i].upcase)
      else
        result.push(rotate_arr[i])
      end
    end
    i += 1
  end
  result.join
end

answer = caesar_cipher("Hello man How are you", 5)
p answer

