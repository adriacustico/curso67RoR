# class Personal
#     #attr_reader :apellido
#     #attr_writer :apellido
#     attr_accessor :apellido, :nombre

#     #metodos de la clase
#     def calcular
#         puts "#{2*4}"
#     end

#     #setters and getters
# =begin    
#     def setNombre=(nombre) #asignar,poner un valor
#         @nombre = nombre #@nombre es un atributo de la clase o variable de instancia
#     end
#     def getNombre #obtener un valor
#         #return @nombre
#         @nombre
#     end

#     def setApellido=(apellido)
#         @apellido = apellido
#     end
#     def getApellido
#         @apellido
#     end
# =end
# end

# variable1 = Personal.new    #variable1 es un objeto de la clase Personal
# variable1.calcular #llamado al metodo
# otra = Personal.new #instancia de la clase
# otra.calcular #llamado al metodo
# #otra.setNombre = "Matz" #llamado al metodo, con paso de una variable
# otra.nombre = "Matz"

# puts otra.inspect #muestra el nombre de la variable de instancia
# #puts otra.getNombre #muestra el nombre de la variable de instancia
# puts otra.nombre #falla por que no existe el metodo nombre

#otra.setApellido = "Yamada"
#puts otra.getApellido
#puts variable1.getApellido #Nil

# otra.apellido = "Yamada"
# puts otra.inspect #muestra el nombre de la variable 
# puts otra.apellido #muestra el nombre de la variable de instancia


class Usuario
    attr_accessor :username ,:password ,:email
    def initialize(usName="", passWord="", eMail="") #Metodo Constructor
        @username = usNAme
        @password = passWord
        @email = eMail
      end
end

user = Usuario.new
user.username = "adk"
user.password = "dvjksdnvas"
user.email = "asdfh@gmail.com"
puts user.inspect
puts user.email

user2 = Usuario.new("user2","dcvjsndk","dsvbdsj@hotmail.com")
puts user2.inspect
puts user2.username
user2.password="djcefhvbsdfhjbvshfbvd"
puts user2.password

