pdf.text "FACTURA ##{@factura.id}", :size => 30, :style => :bold, :mode => :stroke

text "FECHA FACTURA: #{@factura.created_at}"

stroke_horizontal_rule

pdf.move_down(30)
    
stroke_horizontal_rule

  text "Fecha: #{@factura.fecha}"
 
  text "Numero pago: #{@factura.num_pago}"
  
  text "Cliente: #{@factura.cliente_id}"
  
  text "Pago: #{@factura.modo_pago.nombre}"
  
  stroke_horizontal_rule

 
  
  
  
pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(5)





