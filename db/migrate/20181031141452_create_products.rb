class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :titulo
      t.string :descripcion
      t.string :imagen
      t.numeric :precio

      t.timestamps
    end
  end
end
