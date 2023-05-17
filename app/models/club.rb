# == Schema Information
#
# Table name: clubs
#
#  id         :bigint           not null, primary key
#  name       :string
#  score      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Club < ApplicationRecord
    has_many :clubs

    validates :name, presence: true
    validates :name, uniqueness: {case_sensitive: false}
end
