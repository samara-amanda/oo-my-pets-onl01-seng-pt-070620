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
      Dog.mood = 'happy'
    end
  end

end
