class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.float :precio_uni
      t.float :stock
      t.integer :cantidad
      t.references :category, index: true
      t.has_attached_file :arch

      t.timestamps null: false
    end
    add_foreign_key :productos, :categories
  end
end
