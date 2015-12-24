class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.date :fch_nacimiento
      t.boolean :genero
      t.string :telefono1
      t.string :telefono2
      t.string :mail
      t.references :municipio, index: true, foreign_key: true
      t.string :docIdentidad
      t.references :tipo_doc, index: true, foreign_key: true
      t.references :estado_civil, index: true, foreign_key: true
      t.string :tMovil

      t.timestamps null: false
    end
  end
end
