module Shout

    def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  	def self.yell_happily(words)
  	words + " Weeeee" + " :D"
  end
end

puts Shout.yell_angrily("Donald Trump")
puts Shout.yell_happily("Rainbows and unicorns and butterflies")