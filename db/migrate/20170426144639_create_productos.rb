class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|

      t.string :title
      t.string :cantidad
      t.text :content
      t.timestamps
    end
  end
end
