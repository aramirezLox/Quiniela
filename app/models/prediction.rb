# == Schema Information
#
# Table name: predictions
#
#  id          :bigint           not null, primary key
#  user_id_id  :bigint           not null
#  bed         :string
#  match_id_id :bigint           not null
#  points      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Prediction < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :match, class_name: 'Match'


end

# rails generate migration Prediction user:references bed:string match:references points:integer          