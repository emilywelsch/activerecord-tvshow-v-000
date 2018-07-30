class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show #this method should return the show with the highest rating. hint: use the highest_rating method as a helper method.
    Show.find_by(rating:10).name
    Show.find_by(rating: Show.highest_rating).name

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
