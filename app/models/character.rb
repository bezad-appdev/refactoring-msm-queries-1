# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    a_id = self.id
    matching_movies = Movie.where({ :id => a_id })
    the_character = matching_movies.at(0)
    return the_character
  end
end
