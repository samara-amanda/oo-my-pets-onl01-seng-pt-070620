class Owner
OWNERS = []
attr_accessor :name, :pets
attr_reader :species

def initialize(species)
  @species = species
  OWNERS << self
  @pets = {:fishes => [], :dogs => [], :cats => []}
end

def self.all ##Do we have to use this if we use a class variable? @@all
OWNERS
end

def self.reset_all
OWNERS.clear
end

def self.count
OWNERS.size
end

def species
  @species
end

def say_species
  return "I am a #{species}"
end

def name
  @name #where did we set @name = name?
end

def buy_fish(name)
  pets[:fishes] << Fish.new(name) #how does owner.rb know where fish.rb is?
end

def buy_cat(name)
  pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  pets[:dogs] << Dog.new(name)
end

def walk_dogs
  pets[:dog].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  pets[:cats].each do |cat|
  cat.mood = "Happy"
  end
end

def feed_cat
  pets[:cat].each do |cat|
  cat.mood = "happy"
  end
end

def list_pets
  "I have #{pets[:fishes].count} fish. I have #{pets[:cats].count} cats. I have #{pets[:dogs].count} dogs."
end

end
