class Show < ActiveRecord::Base

  # @rick_and_morty = Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10)
  # @law_and_order = Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => 7)
  # @the_cleveland_show = Show.create(:name => "The Cleveland Show", :day => "Monday", :network => "Fox", :rating => 2)
  # @fear_the_walking_dead = Show.create(:name => "Fear the Walking Dead", :day => "Sunday", :network => "AMC", :rating => 3)

  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show #this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
    Show.find_by(rating:10).name
  end

  def lowest_rating #returns the lowest value in the ratings column.
  end

  def least_popular_show #returns the show with the lowest rating.
  end

  def ratings_sum #returns the sum of all of the ratings.
  end

  def popular_shows #returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
  end

  def shows_by_alphabetical_order #returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
  end
end
