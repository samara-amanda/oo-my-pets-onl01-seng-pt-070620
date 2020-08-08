class Owner
  # code goes here
  attr_reader :name, :species
  attr_writer :dog, :cat

  @@all = []
  @@pets = {:cats=> [], :dogs => []}

  def initialize(name= "Beckham", species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def pets
    @@pets
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

end
