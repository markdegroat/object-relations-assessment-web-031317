class Review

  attr_accessor :content, :customer, :restaurant

  REVIEWS = []

  def initialize(content)
    @content = content
    REVIEWS << self
  end

  def self.all
    return REVIEWS
  end
end
