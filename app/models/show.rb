class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show #this method should return the show with the highest rating.
    Show.find_by(rating:highest_rating)#.name
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by(rating:lowest_rating)#.name
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows #returns an array of all of the shows that have a rating greater than 5.
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end

# @rick_and_morty = Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10)
# @law_and_order = Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => 7)
# @the_cleveland_show = Show.create(:name => "The Cleveland Show", :day => "Monday", :network => "Fox", :rating => 2)
# @fear_the_walking_dead = Show.create(:name => "Fear the Walking Dead", :day => "Sunday", :network => "AMC", :rating => 3)
