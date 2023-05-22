class RemovePlenaryFromMatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :plenary
  end
end
