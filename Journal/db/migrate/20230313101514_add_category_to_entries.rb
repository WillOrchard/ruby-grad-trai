class AddCategoryToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :category, :string
  end
end
