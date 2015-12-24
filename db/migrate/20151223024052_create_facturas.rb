class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :num_pago
      t.date :fecha
      t.references :cliente, index: true
      t.references :modo_pago, index: true

      t.timestamps null: false
    end
    add_foreign_key :facturas, :clientes
    add_foreign_key :facturas, :modo_pagos
  end
end
