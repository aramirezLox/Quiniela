# == Schema Information
#
# Table name: scores
#
#  id         :bigint           not null, primary key
#  club_id_id :bigint           not null
#  score      :integer
#  win        :integer
#  lost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Score < ApplicationRecord
  belongs_to :club_i, class_name: 'Club'

end

