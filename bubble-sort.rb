# Array to be sorted
integer_arr = [4,3,78,2,0,2]
string_arr = ["hi","hello","hey"]

#Method to sort arrays
def bubble_sort(array)
times_loop = array.length-1
  #Iterate troogh the array a Nnumber of times to make it sorted
  times_loop.times {  
    #Swap counter to check if array is already sorted
    swap_counter = 0
    #Compare every item in array to the one next to it
    array.each_with_index do |item, index|
      #Check if number is greater than the next number
      a = item
      b = array[index+1]
      is_greater = a <=> b
      if is_greater == 1 
          array[index+1] = a
          array[index] = b
          swap_counter += 1          
       end
    end 
    #Stop the loop if array is sorted
    break if swap_counter == 0
  }
  yield
end

bubble_sort(integer_arr) {print "Sorted Array: #{arr}"}