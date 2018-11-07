class CreateRelacions < ActiveRecord::Migration[5.1]
  def change
    create_table :relacions do |t|
    	t.integer "product_id"
	    t.integer "category_id"

    	t.timestamps
    end
	  add_index :relacions, :product_id
      add_index :relacions, :category_id
      add_index :relacions, [:category_id, :product_id], unique: true
      
  end
end
