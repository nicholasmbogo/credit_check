class CreditCheck
  def double(num)
    num * 2
  end

  def validate(num)
    split_number = num.split("")
    split_doubled = split_number.each_with_index.map do |num, index|
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
num = "5541801923795240"
creditcheck = CreditCheck.new
p creditcheck.validate(num)
