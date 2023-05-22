class Prediction < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :match, class_name: 'Match'

  validates :points, presence: true

  def match_label
    "L: #{match.local.name} vs V: #{match.visitor.name}"
  end

end
