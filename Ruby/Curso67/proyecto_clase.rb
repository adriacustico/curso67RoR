class Proyecto
    # tu codigo aqui
    attr_accessor :nombre, :descripcion
    def initialize (name="", description="")
        @nombre = name
        @descripcion = description
    end

    def presentacion
        puts "#{@nombre}, #{@descripcion}"
    end
end
proyecto1 = Proyecto.new("Proyecto 1", "Descripción 1")
puts proyecto1.nombre # => "Proyecto 1"
proyecto1.presentacion  # => "Proyecto 1, Descripción 1"

