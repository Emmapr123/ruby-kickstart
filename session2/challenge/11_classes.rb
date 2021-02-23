# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :beers

  def initialize(beers)
    return beers = 0 if beers < 0
    return beers = 99 if beers > 99
    self.beers = beers
  end

  def to_words(beers)
    if beers < 19
      %w{ zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}[beers]
    if beers % 10 == 0
      %w{ zero ten twenty thirty forty fifty sixty seventy eighty ninety}[beers/10]
    else
      "#{to_words beers/10}-#{to_words beers}"
    end.capitalize
  end

  def bottle_s(beers)
    beers == 1 ? "bottle" : "bottles"
  end

  def print_song(beers)
    puts  "#{to_words beers} #{bottle_s beers} of beer on the wall,",
          "#{to_words beers} #{bottle_s beers} of beer,",
          "take on down, pass it around,",
          "#{to_words beers - 1} #{bottle_s beers - 1} of beer on the wall."
  end

end
