class Owner
  attr_reader :name, :species
  attr_accessor :dogs, :cats

  @@all = []

  def initialize(name= "Beckham", species="human")
    @species = species
    @name = name
    @@all << self
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
      cat.name == self
    end
  end

  def dogs
    Dog.all.select do |cat|
      cat.name == self
    end
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

end
