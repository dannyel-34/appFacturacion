class AddNameToFacturas < ActiveRecord::Migration
  def change
    add_reference :facturas, :detalle, index: true
    add_foreign_key :facturas, :detalles
  end
end
