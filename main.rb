def has_hidden_fee(arr, st)
  result = st.scan(/[0-9]/).join('').to_i
  newArr = Array.new
  accumulator = 0

  arr.each_with_index do |item, index|
    newItem = item.scan(/[0-9]/).join('').to_i
    newArr << newItem
  end
  
  newArr.each do |num|
    accumulator = accumulator + num
  end

  if accumulator === result
    return false
  else 
    return true
  end
  
end

has_hidden_fee(["$1", "$4", "$1", "$8"], "$15")

#has_hidden_fee(["$2", "$4", "$1", "$8"], "$15") ➞ false
#has_hidden_fee(["$1", "$2", "$3"], "$6") ➞ false
#has_hidden_fee(["$1"], "$4") ➞ true