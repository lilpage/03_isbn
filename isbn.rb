def isbn_verify?(isbn_string)

  #Alter String
  #Converts final X to 10
  if isbn_string[-1] == "X"
    isbn_string[-1] = "10" 
  end
  # Removes any dashes
  isbn_string = isbn_string.gsub("-", "")

  # Invalidate Clauses:
  # Wrong length
  if isbn_string.length != 10
    return false
  # Non-numeric character
  elsif isbn_string.include? "/\w/"
    return false
  end
  # Main Cypher
  sum = (isbn_string[0].to_i * 10 +
  isbn_string[1].to_i * 9 +
  isbn_string[2].to_i * 8 +
  isbn_string[3].to_i * 7 +
  isbn_string[4].to_i * 6 +
  isbn_string[5].to_i * 5 +
  isbn_string[6].to_i * 4 +
  isbn_string[7].to_i * 3 +
  isbn_string[8].to_i * 2 +
  isbn_string[9].to_i      ) / 11.0
  if sum == sum.to_int
    return true
  else
    return false
  end

end

p isbn_verify?("1680507222")
p isbn_verify?("1680507223")

