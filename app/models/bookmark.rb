# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord

  belongs_to :user, :required => true
  belongs_to :movie, :required => true
  
  # belongs_to(:user, {
  #   :class_name => "User",
  #   :foreign_key => "user_id",
  #   :required => true
  # })

  # belongs_to(:movie, {
  #   :class_name => "Movie",
  #   :foreign_key => "movie_id",
  #   :required => true
  # })

  # has many :bookmarks
  # has_many :movie, :through => :bookmarks 

end
