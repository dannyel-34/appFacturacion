class Cliente < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :tipo_doc
  belongs_to :estado_civil
  
  def self.search(search, page)
      where(['upper(docIdentidad) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("docIdentidad")
  end
  
   #mwetodos autocomplete
  def municipio_nombre
      municipio.nombre if municipio
  end

  def municipio_nombre=(nombre)
      self.municipio = Municipio.find_by_nombre(nombre)
  end 

end
