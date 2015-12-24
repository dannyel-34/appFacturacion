class AddNameToDetalles < ActiveRecord::Migration
  def change
    add_column :detalles, :vr_venta, :integer
  end
end
