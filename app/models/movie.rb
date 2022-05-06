# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def my_director
    d_id = self.id
    matching_directors = Director.where({ :id => d_id })
    the_director = matching_directors.at(0)
    return the_director
  end
end
