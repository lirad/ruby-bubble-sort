# Array to be sorted
arr = [4,3,78,2,0,2]

#Method to sort arrays
def bubble_sort(array)

  #Get the array values
  array.each_with_index do |item, index|
    #Check if number is greater than the next number
    is_greater = array[index] <=> array[index+1]
    first_number = array[index]
    second_number = array[index+1]
    case is_greater
      when 1
        #4
        array[index+1] = item
        array[index] = array[index+1]
        puts "Is >"
      when -1
        puts "Is <" 
      else 
        puts "Is ="
     end 
  end

  print array
end


bubble_sort(arr)