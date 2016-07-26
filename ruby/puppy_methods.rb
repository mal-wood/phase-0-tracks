class Puppy
  
   def initialize
    puts "Initializing new puppy instance ..."
  end

  # Make the puppy fetch a toy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  # Make the puppy speak
  def speak(integer)
    puts "Woof!" * integer
  end
  
  # Make the puppy roll over
  def roll_over
    puts "*rolls over*"
  end
  
  # Convert dog age to human years
  def dog_years(human_years)
    puts human_years * 7
  end
  # Make the puppy jump
  def jump
    puts "*jumps*"
  end
  
end

# Driver code
lab = Puppy.new
lab.fetch("ball")
lab.speak(5)
lab.roll_over
lab.dog_years(3)
lab.jump