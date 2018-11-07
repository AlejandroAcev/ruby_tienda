class AddCategoriesToProducts < ActiveRecord::Migration[5.1]
  def change
  	
  end
  add_column :categories, :category_id, :integer
  add_index  :categories, :category_id
end
