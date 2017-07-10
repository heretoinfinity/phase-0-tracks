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
start with each


=end
def bubble_sort(arr)
  length = arr.length
  reduced_length = length - 1

  for outer_ind in (0...reduced_length-1)
    p "length:  #{length}"
    for ind in (0...length-1)
      left_num = arr[ind]
      right_num = arr[ind + 1]
      if left_num > right_num
        arr[ind] = right_num
        arr[ind + 1] = left_num
      end
    end
    length = length - 1
      p "new_length:  #{length}"
      p "arr:  #{arr}"
      p '---------'
  end

  return arr
end

arr1 = [0, 1, 2, 3]
arr2 = [30, 20, 10, 7]

# p bubble_sort(arr1) # => [0, 1, 2, 3]
p bubble_sort(arr2) # => [20, 10, 7, 30]