class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    puts "Woof!" * integer
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    puts human_years * 7
  end
  
  def jump
    puts "*jumps*"
  end
  
end

lab = Puppy.new

lab.fetch("ball")

lab.speak(5)

lab.roll_over

lab.dog_years(3)

lab.jump