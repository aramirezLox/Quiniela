class RemoveScoreFromClubs < ActiveRecord::Migration[7.0]
  def change
    remove_column :clubs, :score
  end
end
