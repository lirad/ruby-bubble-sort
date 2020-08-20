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
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  a_length = array.length - 1
  a_length.times do
    swap_counter = 0
    (0..a_length - 1).each do |x|
      if yield(array[x], array[x + 1]).positive?
        array[x], array[x + 1] = array[x + 1], array[x]
        swap_counter += 1
      end
    end
    break if swap_counter.positive? 
  end
  array
end

p bubble_sort_by(%w[hey hi hello]) { |left, right| left.length - right.length }
