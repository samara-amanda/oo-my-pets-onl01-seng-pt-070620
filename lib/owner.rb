class Owner
  attr_reader :name, :species
  attr_accessor :pets

  @@all = []


  def initialize(name= "Beckham", species="human")
    @species = species
    @name = name
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
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
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @@pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets.each do |pet, arr|
      arr.map do |pet|
        pet.mood = "nervous"
      end
      arr.clear
    end
  end

end
