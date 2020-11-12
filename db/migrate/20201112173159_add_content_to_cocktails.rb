class AddContentToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :content, :text
  end
end
