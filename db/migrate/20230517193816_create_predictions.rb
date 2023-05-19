class CreatePredictions < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.references :user, null: false, foreign_key: {to_table: :users}
      t.string :bed
      t.references :match, null: false, foreign_key: {to_table: :matches}
      t.integer :points

      t.timestamps
    end
  end
end
