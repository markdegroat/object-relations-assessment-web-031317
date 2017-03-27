class Customer
  attr_accessor :first_name, :last_name, :reviews

  CUSTOMERS = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    CUSTOMERS << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    CUSTOMERS
  end

  def self.find_by_name(name)
    array = self.all.select do |customer|
      customer.full_name == name
    end
    array.first
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(rest, content)
    r = Review.new(content)
    r.restaurant = rest
    r.customer = self
    self.reviews << r
    rest.reviews << r
  end






end
