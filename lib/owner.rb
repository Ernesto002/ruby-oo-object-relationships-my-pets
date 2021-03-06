class Owner
    
    attr_accessor :name, :pets
    attr_reader :species
  
    @@owners = []
  
    def initialize(species, pets = {:dogs => [], :cats => []})
      @species = species
      @pets = pets
      @@owners << self
    end
  
    def say_species
      "I am a #{@species}."
    end
  
    def buy_cat(cat_name)
      @pets[:cats] << Cat.new(cat_name)
    end
  
    def buy_dog(dog_name)
      @pets[:dogs] << Dog.new(dog_name)
    end
  
    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end
  
    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end
  
    def sell_pets
      @pets.each do |type, name_array|
        name_array.each do |pet|
          pet.mood = "nervous"
        end 
      end
      @pets = {}
    end
  
    def list_pets
      "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end
  
    def self.all
      @@owners
    end
  
    def self.reset_all
      @@owners.clear
    end
  
    def self. count
      @@owners.length
    end
end