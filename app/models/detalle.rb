class Detalle < ActiveRecord::Base
  belongs_to :factura
  belongs_to :producto
  
  before_create :llenar
  before_update :llenar
  
  def llenar
    p = Producto.find(self.nombre_pro)
    self.nombre_pro = p.nombre
    self.precio_u = p.precio_uni       
    self.iva = p.precio_uni * 0.16
    self.total_iva = self.iva * self.cantidad
    self.total_pre = p.precio_uni * self.cantidad
    p.stock = p.stock - self.cantidad
    
    p.save
  end
  
  
  def self.search(search, page)
      where(['upper(nombre_pro) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre_pro")
  end
  
end
