class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.references :club_id, null: false, foreign_key: {to_table: :clubs}
      t.integer :score
      t.integer :win
      t.integer :lost

      t.timestamps
    end
  end
end
