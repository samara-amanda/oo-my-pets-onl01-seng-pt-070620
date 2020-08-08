class Owner
  attr_reader :name, :species
  attr_accessor :pets

  @@all = []


  def initialize(name= "Beckham", species="human")
    @species = species
    @name = name
    @pets = {dogs: [], cats: []}
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |cat|
      cat.owner == self
    end
  end

  def buy_cat(name)
   name = Cat.new(name, self)
  end

  def buy_dog(name)
    name = Dog.new(name, self)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      mood = "happy"
    end
  end

  def feed_cats
    @pets[:cats].each do |cat|
      mood = 'happy'
    end
  end

  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = "nervous"
      end
      arr.clear
    end
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
