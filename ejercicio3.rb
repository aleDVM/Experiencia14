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
  puts 'Option 1  : Enter the data of the person'
  puts 'Option 2  : Update your data'
  puts 'Option 3  : Delete your data'
  puts 'Option 4  : Number of people admitted'
  puts 'Option 5  : Show communes of users'
  puts 'Option 6  : List of people between 20 and 25 years'
  puts 'Option 7  : Shows the sum of the ages of all people'
  puts 'Option 8  : Shows the average age of the group'
  puts 'Option 9  : Show list by gender'
  puts 'Option 10 : Exit'


    option = gets.chomp.to_i
if option > 0 && option <= 10
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

      d = data.each do |g|
        print g
        puts
        if g[:name] == name
          puts 'Write your age'
          age = gets.chomp.to_i
          g[:age] = age
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


      data.each do |k|

        if k[:name] == name_delete
          print k
          k.delete(:name)
          k.delete(:age)
          k.delete(:commune)
          k.delete(:gender)
        end
        puts
      end
      print data
      puts
      # Opcion 4: Muestra la cantidad de personas ingresadas.
    when 4
      puts "The number of people is #{data.size}"
      puts

    # Opcion 5: Muestra las comunas de todas las personas.
    # hint: Generar un array con las comunas, eliminar repeticiones.
    # Considerar que pueden haber nombres escritos con mayuscula y minuscula.

    when 5
      puts 'The communes of the users are:'
      b = data.uniq { |el| "#{el[:commune]}"}
      b.each do |k|
        puts k[:commune]
      end
      puts

    # Opcion 6: Muestra una lista con todas las personas que tengan
    # entre 20 y 25 agnos.
    when 6
      c = data.select { |el| el[:age] > 20 }
      print 'People between 20 and 25 years old are: '
      puts
      c.each do |k, v|
        print "#{k[:name]} : #{k[:age]} years old"
        puts
      end

      # Opcion 7: Muestra la suma de las edades de todas las personas.
    when 7
      d = data.inject(0) { |sum, el| sum + el[:age] }
      print "The sum of the ages of the persons admitted is #{d}"
      puts

      # Opcion 8: Muestra el promedio de las edades del grupo.
    when 8
      e = data.inject(0) { |sum, el| sum + el[:age] }
      prom = e / data.size.to_f
      print "The average age of the group is #{prom}"
      puts

      # Opcion 9: Muestra dos listas de personas, una por cada genero.
    when 9
      print 'Gender listed'
      puts
      f = data.group_by { |el| el[:gender] }.each { |_, v| v.map! { |h| h[:name] } }
      print f
      puts
      # El menu debe repetirse hasta que el usuario ingrese la opcion 10 (salir)
    else
      option = 24
    end
  else
    option = 3
  end

  end
