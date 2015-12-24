pdf.text "Venta ##{@cliente.id}", :size => 30, :style => :bold, :mode => :stroke

stroke_horizontal_rule

pdf.move_down(30)

text "Fecha de registro: #{@cliente.nombre}"
text "Apellidos: #{@cliente.apellido}"
text "Cedula ciudadania: #{@cliente.docIdentidad}"
text "Tipo de documento: #{@cliente.tipo_doc.nombre}"


pdf.move_down(10)

stroke_horizontal_rule

pdf.move_down(5)

text "Direccion de residencia: #{@cliente.direccion}"
text "ciudad de residencia: #{@cliente.municipio_id}"
text "Telefono 1: #{@cliente.telefono1}"
text "Telefono 2: #{@cliente.telefono2}"
text "Telefono movil: #{@cliente.tMovil}"

pdf.move_down(10)

stroke_horizontal_rule

text "Estado civil: #{@cliente.estado_civil.nombre}"
text "Fecha de cumpleaños: #{@cliente.fch_nacimiento}"
text "Correo eletronico: #{@cliente.mail}"

pdf.move_down(100)

formatted_text [

{ :text => "Estimado cliente si su factura presenta un valor no correspondiente por favor 

informenos al ", :color => "DE150E" },{ :text => "555-555", :color => "0000FF"}]