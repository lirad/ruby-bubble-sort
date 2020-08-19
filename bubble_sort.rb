integer_arr = [4, 3, 78, 2, 0, 2]
string_arr = %w[hi hello hey]

def bubble_sort(array)
  times_loop = array.length - 1
  times_loop.times do
    swap_counter = 0
    array.each_with_index do |item, index|
      a = item
      b = array[index + 1]
      is_greater = a <=> b
      next unless is_greater == 1

      array[index + 1] = a
      array[index] = b
      swap_counter += 1
    end
    break if swap_counter.zero?
  end
  yield
  array
end

bubble_sort(integer_arr) { puts "Sorted Integer: #{integer_arr}" }

def bubble_sort_by(array)
  times_loop = array.length - 1
  times_loop.times do
    swap_counter = 0
    array.each_with_index do |item, index|
      a = item
      b = array[index + 1]
      is_lesser = b <=> a
      next unless is_lesser == 1

      array[index + 1] = a
      array[index] = b
      swap_counter += 1
    end
    break if swap_counter.zero?
  end
  yield
  array
end

bubble_sort_by(string_arr) { puts "Sorted String: #{string_arr}" }
