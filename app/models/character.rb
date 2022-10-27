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
    
    validates(:name, {:presence => true})

    belongs_to(:movie, {
      :class_name => "Movie",
      :foreign_key => "movie_id",
      :required => true
    })

    has_many :cast, :through => :actor, :source => :movie

end
