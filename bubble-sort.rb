# Arrays to be sorted
integer_arr = [4,3,78,2,0,2]
string_arr = ["hi","hello","hey"]

#Bubble sort
def bubble_sort(array)
times_loop = array.length-1
  #Iterate trhough the array a number of times to sort it
  times_loop.times {  
    #Swap counter to check if array is already sorted
    swap_counter = 0
    #Compare every item in array to the one next to it
    array.each_with_index do |item, index|
      #Check if the a number is greater than the b next number
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

#bubble_sort([4,3,78,2,0,2])
bubble_sort(integer_arr) {puts "Sorted Integer: #{integer_arr}"}

#Bubble Sort By
def bubble_sort_by(array)
  times_loop = array.length-1
    #Iterate trhough the array a number of times to sort it
    times_loop.times {  
      #Swap counter to check if array is already sorted
      swap_counter = 0
      #Compare every item in array to the one next to it
      array.each_with_index do |item, index|
        #Check if a string is greater than the b string
        a = item
        b = array[index+1]
        is_lesser = b <=> a
        if is_lesser == 1 
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
  
  #bubble_sort_by(["hi","hello","hey"])
  bubble_sort_by(string_arr) {puts "Sorted String: #{string_arr}"}
  
