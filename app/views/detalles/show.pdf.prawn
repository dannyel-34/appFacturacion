pdf.text "Detalle ##{@detalle.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30)

  text "Fecha de venta: #{@detalle.created_at}"

  text "Nombre del Articulo: #{@detalle.nombre_pro}"

  text "Cantidad: #{@detalle.cantidad}"

  text "Precio Unitario: #{@detalle.precio_u}"
  
  text "IVA: #{@detalle.iva}"
    
pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(5)

text "Total precio: #{@detalle.total_pre}", :row_color => ["A32626","2664A3"], :aling => {30 => 

:rigth,2 => :left}

text "Total iva: #{@detalle.total_iva}"

text "Total Pago: #{@detalle.total_iva + @detalle.total_pre}"

pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(100)

formatted_text [

{ :text => "Estimado cliente si su factura presenta un valor no correspondiente por favor 

informenos al ", :color => "DE150E" },

 { :text => "555-555", :color => "0000FF"}]
