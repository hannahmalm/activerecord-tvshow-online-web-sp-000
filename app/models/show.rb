class Show < ActiveRecord::Base
  def self.highest_rating
      Show.maximum(:rating)
  end 
  
  def self.most_popular_show
      # Show.maximum(:rating).first
      self.highest_rating.title
  end 
  
  def self.lowest_rating
      Show.minimum(:rating)
  end 
  
  def self.least_popular_show
      self.lowest_rating.order()
  end 
  
  def self.ratings_sum 
    Show.sum(:rating)
  end 
  
  def self.popular_shows 
    self.where("rating > 5")
  end 
  
  def self.shows_by_alphabetical_order 
    self.order('name ASC')
  end 
  
end 