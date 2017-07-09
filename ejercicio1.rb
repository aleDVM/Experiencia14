a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map { |x| x + 1 }
print b
puts

# Utilizando map generar un nuevo arreglo que contenga todos los valores
# convertidos a float.
c = a.map { |c| c.to_f }
print c
puts

# Utilizando map generar un nuevo arreglo que contenga todos los valores
# convertidos a string.
d = a.map { |b| b.to_s }
print d
puts

# Utilizando reject descartar todos los elementos menores a 5 en el array.
e = a.reject { |n| n < 5 }
print e
puts
# Utilizando select descartar todos los elementos mayores a 5 en el array.
f = a.select { |g| g < 5 }
print f
puts
# Utilizando inject obtener la suma de todos los elementos del array.
g = a.inject(0) { |sum, d| sum + d }
print g
puts
# Utilizando group_by agrupar todos los numeros por paridad (si son pares,
# es un grupos, si son impares es otro grupo).
h = a.group_by { | h| h.even? }
print h
puts
# Utilizando group_by agrupar todos los numeros mayores y menores que 6.
j = a.group_by { |k| k < 6 }
print j
puts
