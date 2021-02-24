# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

def problem_14(*parameters)
  # recieves a hash containing a problem to solve, if no problem is given default to :count_clumps
  problem = parameters.pop[:problem] if parameters.last.is_a? Hash
  problem ||= :count_clumps

  return count_clumps(*parameters)   if problem == :count_clumps
  return same_ends(*parameters)      if problem == :same_ends
  return
end

def same_ends(n, *parameters)
  # given an array, the first number decides the length of the expected numbers to be the same on both ends of the array
  parameters[0, n] == parameters[-n, n]
end

def count_clumps(*array)
  #return the number of clumbs in an array
  number_of_clumps  = 0
  par_before        = nil
  two_before        = nil

  array.each do |num|
      number_of_clumps += 1 if (par_before == num) && (par_before != two_before)
      two_before = par_before
      par_before = num
    end

  number_of_clumps
end
