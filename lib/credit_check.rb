def double(num)
  #double the number
  doubled_number = num * 2
  #if more than 10 add it together
  if doubled_number > 9
    doubled_number - 9 #If doubled number is more than 9, subtract 9. Then give back the number
  else
    doubled_number # if the numberis less than 10 then do nothing, give back the number.
  end
end

card_number = "5541801923795240"

#we split the credit card number using .chars, and saved it to a variable called slpit_number.
split_number = card_number.chars.reverse

#split_number.each do = instructs ruby to do something to every value in split_number array
split_number.each_with_index do |num, index|
  # check if index is odd
  # if it is, mulitply by 2
  if index.odd?
    split_number[index] = double(num.to_i) #change number at odd index to multiplied value.
  else
    split_number[index] = num.to_i #Here we change the strings to an integer in order to run
  end
end



added_number = split_number.sum #here we sum up all the integers


#if added number is divisable by 10 then tell user its valid
#if added number is not divisable by 10, tell the user the card number is invalid.
if added_number % 10 == 0
  puts "the number is valid"
else
  puts "the number is invalid"
end

valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
