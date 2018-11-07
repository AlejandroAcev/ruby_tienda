class CreateCarros < ActiveRecord::Migration[5.1]
  def change
    create_table :carros do |t|
      t.integer :user_id
      t.integer :linea_id

      t.timestamps
    end
  end
end
