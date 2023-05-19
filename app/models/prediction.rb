class Prediction < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :match, class_name: 'Match'

  validates :points, presence: true

  

end
