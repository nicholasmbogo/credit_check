class CreditCheck

  def double(num)
    num * 2
  end

  def validate(num)
    split_number = num.split("")
    split_double = split_number.map.with_index do |num, index|
      num = num.to_i
  end
end
