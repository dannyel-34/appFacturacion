class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    
    has_many :assignments
    has_many :roles, :through => :assignments
    
    after_create :asignar_rol
    
    
    def has_role?(role_sym)
        roles.any?{|r|r.name.underscore.to_sym == role_sym}
    end
    
    def asignar_rol #Luego creamos el método asignar_rol     
        @user = User.last #Luego traemos el último usuario que se registro.
        rol = Role.find_by name: 'cliente' #Y tambien traemos el rol cliente.
        Assignment.create(user_id: @user.id, role_id: rol.id) #Y aquí le asignamos el rol.
    end

end
