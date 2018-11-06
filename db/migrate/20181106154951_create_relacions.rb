class CreateRelacions < ActiveRecord::Migration[5.1]
  def change
    create_table :relaciones do |t|
    	t.integer "product_id"
	    t.integer "category_id"

    	t.timestamps
    end
	  add_index :relaciones, :product_id
      add_index :relaciones, :category_id
      add_index :relaciones, [:category_id, :product_id], unique: true

  end
end
