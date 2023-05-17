class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :local, null: false, foreign_key: {to_table: :clubs}
      t.references :visitor, null: false, foreign_key: {to_table: :clubs}
      t.string :result
      t.string :plenary
      t.date :match_date

      t.timestamps
    end
  end
end
