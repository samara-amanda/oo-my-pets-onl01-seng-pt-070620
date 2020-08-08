class Owner
  attr_reader :name, :species

  @@all = []


  def initialize(name= "Beckham", species="human")
    @species = species
    @name = name
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
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

end
