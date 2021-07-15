# 1.- Mostrar 1-255
# Escriba un programa que muestre todos los números del 1 al 255.
#puts (1..255).to_a


# 2.- Mostrar números impares entre 1 y 255
# Escriba un programa que muestre todos los números impares del 1 al 255.
#puts (1..255).find_all {|a| a.odd?}.to_s


# 3.- Muestre la suma
# Escriba un programa que muestre los números del 0 al 255, pero esta vez, muestre también la suma de los números que se han mostrado hasta el momento. Por ejemplo, tu programa debe mostrar algo como esto:
#     Nuevo numero: 0 Suma: 0
#     Nuevo numero: 1 Suma: 1
#     Nuevo numero: 2 Suma: 3
#     Nuevo numero: 3 Suma: 6
#     ...
#     Nuevo numero: 255 Suma: __
# NO utilice un arreglo para este ejercicio.
#sum=0
# (0..255).each { |i,sum| puts "Nuevo Numero: #{i},  Suma:  #{(0..i).sum}" }



# 4.- Recorriendo un arreglo
# Dado un arreglo X, digamos [1, 3, 5, 7, 9, 13], escriba un programa que recorra cada elemento del arreglo y muestre su valor. Ser capaz de recorrer cada elemento de un arreglo es sumamente importante.
# X = [1, 3, 5, 7, 9, 13]
# [1, 3, 5, 7, 9, 13].each {|i| puts i.to_s}



# 5.- Encontrar el máximo
# Escriba un programa (un conjunto de instrucciones) que tome cualquier arreglo y muestre el valor máximo del arreglo. Tu programa debe funcionar también con arreglos que tengan todos los números negativos (ejemplo [-3, -5, -7]), o incluso una combinación con números positivos, negativos y cero.
# a = (-50..50).to_a.shuffle
# puts a.max


# 6.- Promedio
# Escriba un programa que tome un arreglo y muestre el PROMEDIO de los valores del arreglo. Por ejemplo para el arreglo [2, 10, 3] tu programa debe mostrar un promedio de 5. De nuevo, asegúrate de crear un caso base y escribe las instrucciones para resolver este caso primero, luego ejecuta tus instrucciones para otros casos más complicados. Puedes utilizar la función length para esta actividad.
# a =  [1, 3, 5, -7, 9, 13]
# puts a.sum/a.length

# 7.- Arreglo con números impares
# Escriba un programa que cree un arreglo "y" que contenga todos los números impares entre 1 y 255. Cuando el programa se complete, "y" debe tener los valores de [1, 3, 5, 7, ... 255].
# y = (1..255).to_a
# puts y.find_all {|a| a.odd?}.to_s

# 8.- Mayor que Y
# Escriba un programa que tome un arreglo y devuelva la() cantidad de números que son mayores a un valor dado Y. Por ejemplo si el arreglo es [1, 3, 5, 7] y Y = 3, después de ejecutar tu programa debe mostrar 2 (debido a que hay 2 valores en el arreglo que son mayores a 3).

# x = [1, 3, 5, 7]
# y = 3
#  puts x.find_all {|a| a>y}.to_s

# 9.- Elevar al cuadrado
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo (un conjunto e instrucciones) que multiplique cada valor en el arreglo por si mismo. Cuando el programa termine, el arreglo x debe tener valores que han sido elevados al cuadrado, es decir [1, 25, 100, 4].
# a = (-5..5).to_a.shuffle
# puts a.to_s
# a=[1, 3, 5, 7]
# puts a.collect { |i| i*i }.to_s



# 10.- Eliminar números negativos
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que reemplace cualquier número negativo con 0. Cuando el programa termine, x no debe tener valores negativos, es decir [1, 5, 10, 0].
x=[1, 5, 10, -2]
x.each_with_index do |valor, indice|
    if valor < 0
      x[indice] = 0
    end
  end
  
# 11.- Max, Min, y Promedio
# Dado un arreglo x, digamos [1, 5, 10, -2], cree un algoritmo que devuelva un hash con el valor máximo, el valor mínimo y el promedio de los valores en el arreglo.


# 12.- Cambiar los valores en el arreglo
# Dado un arreglo x, cree un algoritmo que cambie cada número del arreglo por el número que hay en la siguiente posición. Por ejemplo, dado el arreglo [1, 5, 10, 7, -2], cuando el programa termine, este arreglo debe ser [5, 10, 7, -2, 0].


# 13.- Números a cadenas
# Escriba un programa que tome un arreglo de números y reemplace cualquier número negativo con la palabra "Dojo". Por ejemplo, dado el arreglo x = [-1, -3, 2], después que el programa haya terminado, ese arreglo debe ser ['Dojo', 'Dojo', 2].


