class Restaurant
  attr_accessor :name, :reviews
  RESTAURANTS = []

  def initialize(name)
    @name = name
    @reviews = []
    RESTAURANTS << self

  end

  def self.all
    RESTAURANTS
  end

  def self.find_by_name(name)
    array = self.all.select do |restaurant|
      restaurant.name == name
    end
    array.first
  end

  #instead of tracking each new customer who writes a review, we are
  #instead just going to look at reviews, and then check which customer
  #wrote them in order to maintain SSoT
  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end




end
