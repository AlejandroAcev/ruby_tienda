class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end
