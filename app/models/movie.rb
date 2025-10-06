class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']  # list all ratings you want to support
  end

  def self.with_ratings(ratings_list)
    if ratings_list.nil? || ratings_list.empty?
      all  # return all movies if no ratings are selected
    else
      where(rating: ratings_list)
    end
  end
end
