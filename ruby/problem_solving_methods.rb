# Function
def search_array(array, search_integer)
  for ind in (0...array.length)
    if array[ind] == search_integer
      return ind
    end

    if ind == array.length - 1
      return nil
    end
  end
end

# Code to test search_array
# arr = [42, 89, 23, 1]
# p search_array(arr, 1) #=> 3
# p search_array(arr, 24) #=> nil


=begin
Pseudocode for Fibonacci
-----------------------------------------
create an empty array with the number of
elements required.

If n is 1, write out 0
if n is 2, write out 1

For everything else, sum the 2 previous values



=end

def fib(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  end

  sequence = [0, 1]
  for num in (3..n)
    value = sequence[num-3] + sequence[num-2]
    sequence.push(value)
  end

  return sequence
end

# fib(6)
# sequence = fib(100)

# if sequence[-1] == 218922995834555169026
#   puts 'works'
# else
#   puts 'wrong'
# end


=begin
Have a loop to go through the array once and check
the elements if previous element is > than the next
element and if so, swap them.

Have an outer loop to repeat the above process
for the length of the array - 1 as it takes m - 1
iterations to bubble sort an array with m elements.
=end
def bubble_sort(arr)
  length = arr.length
  outer_length = length - 1

  for outer_ind in (0...outer_length)
    for ind in (0...length-1)
      left_num = arr[ind]
      right_num = arr[ind + 1]
      if left_num > right_num
        arr[ind] = right_num
        arr[ind + 1] = left_num
      end
    end
    length = length - 1
  end

  return arr
end

arr1 = [0, 1, 2, 3]
arr2 = [30, 20, 10, 7]
arr3 = [120, 90, 80, 50, 10, 4]

# p bubble_sort(arr1) # => [0, 1, 2, 3]
p bubble_sort(arr2) # => [20, 10, 7, 30]
p bubble_sort(arr3) # => [4, 10, 50, 80, 90, 120]