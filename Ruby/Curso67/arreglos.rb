
#.at or .fetch
#.delete
#.reverse
#.length
#.sort
#.slice
#.shuffle
#.join
#.insert
#values_at() -> devuelve un arreglo con los valores específicados en los parametros. 
#    e.g. a = %w{gato perro oso}; puts a.values_at(1,2).join(' and ') #=> "perro y oso"

a = [1,2,3,4,5,6,7,8,9]

#.at or .fetch
puts a.at(2) # Devuelve el elemento del arrar en la posicion 2

#.delete
 a.delete(9) # Elimina el valor "9" al array
 puts a 

#.reverse
 b = [1,2,3,4,5,6,7,8,9]
puts b.reverse  # Invierte los elementos del array

#.length
puts 'El largo es ' + b.length.to_s #Devuelve la cantidad de elementos del array

#.sort   #.shuffle
c = b.shuffle
puts c.to_s + ' Arreglo Orden Aleatorio '
puts c.sort.to_s + ' Arreglo Ordenado Menor Mayor'


#.slice
puts c.slice!(0,3)

#.join
d = ['a','b','c','d','e','f','g']
puts d.join   # Convierte los elementos de un array en un elemento

#.insert
puts d.insert(2, 'abc') # inserta el elemento 'ABC' en la posición 2 del arreglo

a = ['perro', 'gato', 'oso']
puts a.values_at(1,2) #Devuelve los valores en la posición 1 y 2 del arreglo


# Return IRB
# 3.0.1 :050 > a = [1,2,3,4,5,6,7,8,9]
# 3.0.1 :051 > 
# 3.0.1 :052 > #.at or .fetch
# 3.0.1 :053 > puts a.at(2) # Devuelve el elemento del arrar en la posicion 2
# 3
#  => nil 
# 3.0.1 :054 > 
# 3.0.1 :055 > #.delete
# 3.0.1 :056 >  a.delete(9) # Elimina el valor "9" al array
#  => 9 
# 3
# 5
# 6
# 7
# 8
#  => nil 
# 3.0.1 :058 > 
# 3.0.1 :059 > #.reverse
# 3.0.1 :060 >  b = [1,2,3,4,5,6,7,8,9]
#  => [1, 2, 3, 4, 5, 6, 7, 8, 9] 
# 3.0.1 :061 > puts b.reverse  # Invierte los elementos del array
# 6
# 5
# 1
# 3.0.1 :062 > 
# 3.0.1 :063 > #.length
# El largo es 9
#  => nil 
# 3.0.1 :068 > puts c.to_s + ' Arreglo Orden Aleatorio '
# [1, 4, 7, 6, 3, 8, 5, 9, 2] Arreglo Orden Aleatorio 
#  => nil 
# 3.0.1 :069 > puts c.sort.to_s + ' Arreglo Ordenado Menor Mayor'
# 3.0.1 :071 > 
# 3.0.1 :073 > puts c.slice!(0,3)
# 1
# 3.0.1 :074 > 
# 3.0.1 :075 > #.join
# 3.0.1 :076 > d = ['a','b','c','d','e','f','g']
#  => ["a", "b", "c", "d", "e", "f", "g"] 
# 3.0.1 :077 > puts d.join   # Convierte los elementos de un array en un elemento
# abcdefg
#  => nil 
# 3.0.1 :078 > 
# 3.0.1 :079 > #.insert
# b
# abc
# c
# d
# e
# f
# g
#  => nil 
# 3.0.1 :081 > 
# 3.0.1 :082 > a = ['perro', 'gato', 'oso']
# 3.0.1 :083 > puts a.values_at(1,2) #Devuelve los valores en la posición 1 y 2 del arreglo