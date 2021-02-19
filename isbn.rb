def isbn_verify?(isbn_string)

  # Allows X Exception
  x_exception = false
  if isbn_string[-1] == "X"
    x_exception = true
  end
  # Removes any dashes
  isbn_string = isbn_string.gsub("-", "")

  # - INVALIDATE CLAUSES -
  # Wrong length
  if isbn_string.length != 10 && x_exception == false
    return false
  # Non-numeric character
  elsif isbn_string.include? "/\w/"
    return false
  end

  # - MAIN CYPHER -
  # For valid string WITH X
  if x_exception == true
    sum = (isbn_string[0].to_i * 10 +
    isbn_string[1].to_i * 9 +
    isbn_string[2].to_i * 8 +
    isbn_string[3].to_i * 7 +
    isbn_string[4].to_i * 6 +
    isbn_string[5].to_i * 5 +
    isbn_string[6].to_i * 4 +
    isbn_string[7].to_i * 3 +
    isbn_string[8].to_i * 2 +
    10      ) / 11.0
    if sum == sum.to_int
      return true
    else
      return false
    end
  # For valid string WITHOUT x
  else
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
end
