# Array to be sorted
arr = [4,3,78,2,0,2,9,5,76,12]

#Method to sort arrays
def bubble_sort(array)
times_loop = array.length-1
 

  times_loop.times { #Get the array values
    array.each_with_index do |item, index|
      #Check if number is greater than the next number
      first_number = item
      second_number = array[index+1]
      is_greater = first_number <=> second_number
      case is_greater
        when 1
          array[index+1] = first_number
          array[index] = second_number

        when -1
        else 
       end 
    end 
    print array}
 
end
bubble_sort(arr)