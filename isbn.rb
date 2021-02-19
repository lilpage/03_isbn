def isbn_verify?(isbn_string)
  p isbn_string #TESTING TESTING
  #Converts final X to 10
  if isbn_string[-1] == "X"
    isbn_string[-1] = "10" 
  end
  # Removes any dashes
  isbn_string = isbn_string.gsub("-", "")
    #to ignore dashes
  # invilidate clauses
    # length != 10 digits
    # wrong character
  # validate clause
    # run cypher
    # divide by 11 = true
    # else invalidate
  p isbn_string # TESTING TESTING
end

isbn_verify?("1111X")
isbn_verify?("11-1-10")
isbn_verify?("11-1-1X")

