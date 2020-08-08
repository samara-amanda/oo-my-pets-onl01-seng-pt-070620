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
    @@pets[:cats] << Cat.new(name)
  end

end
