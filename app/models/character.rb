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
    m_id = self.movie_id
    the_movie = Movie.where({:id => m_id})

    return the_movie
  end

  def actor
    a_id =  self.actor_id
    the_actor = Actor.where({:id => a_id})

    return the_actor
  end
end
