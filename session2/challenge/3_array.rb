# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    self.split('').map.with_index { |string, index|
      if index % 2 == 0
        string
      end
    }.join
  end
end
