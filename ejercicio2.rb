nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

# Extraer todos los elementos que excedan mas de 5 caracteres utilizando
# el metodo .select.
a = nombres.select { |n| n.length > 5 }
print a
puts
# Utilizando .map crear una arreglo con los nombres en minuscula.
b = nombres.map { |j| j.downcase }
print b
puts
# Utilizando .select para crear un arreglo con todos los nombres que empiecen
# con P.
c = nombres.select { |l| l.index('P', 0)}
print c
puts
# Utilizando .map crear un arreglo unico con la cantidad de letras que tiene
# cada nombre.
d = nombres.map { |h| h.length }
print d
puts
# Utilizando .map y .gsub eliminar las vocales de todos los nombres.

e = nombres.map { |e| e.gsub(/[aeiou]/, ' ')  }
print e
puts
