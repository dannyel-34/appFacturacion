class CreateModoPagos < ActiveRecord::Migration
  def change
    create_table :modo_pagos do |t|
      t.string :nombre
      t.string :otros_detalle

      t.timestamps null: false
    end
  end
end
