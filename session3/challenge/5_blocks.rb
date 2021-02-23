# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(arr, iteration=0)
  max_y = arr.length - 1
  max_x = arr.first.length - 1

  return if max_x/2 < iteration || max_y/2 < iteration

  iteration.upto max_x - iteration do |x|
    puts arr[iteration][x]
  end

  (iteration + 1).upto max_y - iteration do |y|
    puts arr[y][max_x - iteration]
  end

  (max_x - 1 - iteration).downto iteration do |x|
     puts arr[max_y - iteration][x]
  end

  (max_y - 1 - iteration).downto iteration + 1 do |y|
    puts arr[y][iteration]
  end

  spiral_access(arr, iteration+1)
end
