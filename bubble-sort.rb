# Array to be sorted
arr = [4,3,78,2,0,2,9,5,76,12,3,6,100,34,5]
string_arr = ["hi","hello","hey"]

#Method to sort arrays
def bubble_sort(array)
times_loop = array.length-1
  #iterate troogh the array a Number of time to make it sorted
  #Try to break the loop if array is sorted
  times_loop.times {  
    #Swap counter to check if array is already sorted
    swap_counter = 0
    #Compared every item in array to each other
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
    print array
    #Stop the loop if array is sorted
    break if swap_counter == 0
  }
end

bubble_sort(arr)