# == Schema Information
#
# Table name: matches
#
#  id         :bigint           not null, primary key
#  local_id   :bigint           not null
#  visitor_id :bigint           not null
#  result     :string
#  plenary    :string
#  match_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Match < ApplicationRecord
  belongs_to :local, class_name: 'Club'
  belongs_to :visitor, class_name: 'Club'
  has_many :predictions, class_name: 'Prediction'

  validates :local, presence: true
  validates :visitor, presence: true
  validate :different_names
  validate :date_validity

  after_update :add_points
  after_update :view_points

  def different_names
    return unless local&.name == visitor&.name

    errors.add(:base, 'Local and visitor cannot have the same name')
  end

  def date_validity
    return if match_date.blank?
    return if match_date > Date.today

    errors.add :match_date, 'Date cannot have a day invalid'
  end

  def add_points
    predictions.each do |prediction|
      prediction.points += 1 if prediction.bed == result
      prediction.save
    end
  end

  def view_points
    predictions.each do |prediction|
      return prediction.user.email, prediction.points
  end
end
end
