class Factura < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :modo_pago
  
  has_many :detalle
end
