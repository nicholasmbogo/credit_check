require 'pry'
 class CreditCheck

   def double(num)
     num * 2
   end

   def validate(num)
     split_number = num.split("")
     split_doubled = split_number.map.with_index do |num, index|
       num = num.to_i

     if index.even?
       doubled = double(num).digits.sum

     elsif index.odd?
       num
     end
    end
      split_doubled.sum
     if split_doubled.sum % 10 == 0
       "valid"
     else
       "invalid"
   end
  end
end

 num = "4024007136512380"
 num = "5541801923795240"



 creditcheck = CreditCheck.new
 p creditcheck = CreditCheck.new.validate(num)
