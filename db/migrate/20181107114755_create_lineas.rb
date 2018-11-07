class CreateLineas < ActiveRecord::Migration[5.1]
  def change
    create_table :lineas do |t|
      t.integer :carro_id
      t.integer :product_id

      t.timestamps
    end
  end
end
