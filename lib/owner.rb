class Owner
  attr_reader :name, :species

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(name= "Beckham", species= "human")
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
    Cat.all.find do |cat|
      cat.name == cat
    end
  end

  def dogs
    Dog.all
  end

end
