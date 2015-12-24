class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.string :nombre_pro
      t.integer :cantidad
      t.float :precio_u
      t.float :iva
      t.float :total_pre
      t.float :total_iva
      t.references :factura, index: true, foreign_key: true
      t.references :producto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
