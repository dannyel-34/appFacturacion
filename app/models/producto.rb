class Producto < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :arch
  validates_attachment_presence :arch
  validates_attachment_content_type :arch, :content_type => [ /\A*\/.*\Z/ ]
  
  def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
  end
end
