# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def films
    my_id = self.id
    matching_records =  Movie.where({:director_id => my_id})

    movies = matching_records.order({ :year => :asc })

    return movies
  end
end
