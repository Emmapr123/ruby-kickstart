# Write a method that receives a number 1 through 5.
# Depending on the value of the number, it will raise
# some particular type of exception.
#
# HINT:
#   All exceptions and errors are descendants of Exception.
#   (Exception is listed as an ancestor)
#
# Examples:
#   exception_raiser 1   # =>   #<RuntimeError: No 1s allowed!>
#   exception_raiser 2   # =>   #<ArgumentError: No 2s allowed!>
#   exception_raiser 3   # =>   #<Exception: No 3s allowed!>
#   exception_raiser 4   # =>   #<SyntaxError: No 4s allowed!>
#   exception_raiser 5   # =>   #<RubyKickstartException: No 5s allowed!>

class RubyKickstartException < Exception
end

def exception_raiser(number)
  if    number == 1 then raise                         "No 1s allowed!"
  elsif number == 2 then raise ArgumentError,          "No 2s allowed!"
  elsif number == 3 then raise Exception,              "No 3s allowed!"
  elsif number == 4 then raise SyntaxError,            "No 4s allowed!"
  elsif number == 5 then raise RubyKickstartException, "No 5s allowed!"
  end
end
