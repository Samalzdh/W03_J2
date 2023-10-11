def is_multiple_of_3_or_5?(current_number)
    if current_number % 3 == 0 || current_number%5 == 0
        return true
    else
        return false
    end
end

def sum_of_3_and_5_multiples?(final_number)
  if final_number.is_a?(Integer) && final_number >= 0
    array =[]
    sum = 0
    (0..final_number - 1).each do |current_number|
      if is_multiple_of_3_or_5?(current_number) 
        array<<current_number     
        
      end
    end 
    sum = array.sum
    return sum   
  else
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end   
end