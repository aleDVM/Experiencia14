# Crear un menu que permita registrar la informacion de los alumnos del curso.
# Opcion 1: Permite ingresar los datos de una persona:
# Nombre
# Edad
# Comuna
# Genero

option = 1
data = []
while option > 0 && option <= 10
  puts 'Welcome, choose an option'
  puts 'Option 1 : Enter the data of the person'
  puts 'Option 2 : Update your data'
  puts 'Option 3 : Delete your data'
  puts 'Option 4 : Number of people admitted'
  puts 'Option 3 : Delete your data'
  puts 'Option 3 : Delete your data'

if option > 0 && option <= 10
  option = gets.chomp.to_i

  case option
  when 1
    puts 'Write your name'
    name = gets.chomp.capitalize
    puts 'Write your age'
    age = gets.chomp.to_i
    puts 'Enter your commune'
    commune = gets.chomp.capitalize
    puts 'Enter your gender'
    gender = gets.chomp.capitalize
    data << { name: name, age: age, commune: commune, gender: gender }
    print data
    puts
  # Opcion 2: Permite editar los datos de la persona.
  when 2
  puts 'Type the name to update'

    name = gets.chomp.capitalize

    d= data.each do |g|
      print g
      puts
      if g[:name]== name
      puts 'Write your age'
      age = gets.chomp.to_i
      g[:age]=age
      puts 'Enter your commune'
      commune = gets.chomp.capitalize
      g[:commune] = commune
      puts 'Enter your gender'
      gender = gets.chomp.capitalize
      g[:gender] = gender
      print g
      puts
     else
        puts 'Your name is not entered'
   end
end
puts
  # Opcion 3: Permite eliminar una persona.
  when 3
    puts 'Type the name to delete'
    name_delete = gets.chomp.capitalize
    c = 0
    data.delete_if { |h| data[:name] == name_delete }
    print people
    puts
# Opcion 4: Muestra la cantidad de personas ingresadas.


# Opción 5: Muestra las comunas de todas las personas.

#hint: Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.

# Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.

# Opción 7: Muestra la suma de las edades de todas las personas.

# Opción 8: Muestra el promedio de las edades del grupo.

# Opción 9: Muestra dos listas de personas, una por cada género.

# El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).
    else
    end
  else
    option = 4
  end
end
