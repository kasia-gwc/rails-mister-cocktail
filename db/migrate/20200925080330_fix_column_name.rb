class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :stars, :cocktails_id, :cocktail_id
  end
end
