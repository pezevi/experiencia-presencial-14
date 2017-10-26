continuar = true
personas = []

while continuar

puts '
---------------------------------------------------------
Elija una opción del menú, opción 10 para salir

(1) Ingresar datos de una persona
(2) Editar los datos de la persona
(3) Eliminar una persona
(4) Cantidad de personas
(5) Comunas de las personas
(6) Lista de personas con edades entre 20-25 años
(7) Suma de todas las edades
(8) Edad promedio de todas las personas
(9) Muestra dos listas de personas, una por genero
(10) Salir
---------------------------------------------------------
'

option = gets.chomp.to_i

case
when option == 1
  puts 'Ingresar el Nombre'
  nombre = gets.chomp
  puts 'Ingresar la Edad'
  edad = gets.chomp
  puts 'Ingresar la Comuna'
  comuna = gets.chomp
  puts 'Ingresar el Género'
  genero = gets.chomp
  personas.push({name:nombre, age:edad, city:comuna, genre:genero})
  print personas

when option == 2
  puts personas
  puts '
  Ingrese el índice del array que quiere modificar'
  cambio = gets.chomp.to_i
  puts personas[cambio]
  puts 'Ingrese el nuevo nombre'
  nombre2 = gets.chomp
  puts 'Ingrese la nueva edad'
  edad2 = gets.chomp
  puts 'Ingrese la nueva comuna'
  comuna2 = gets.chomp
  puts 'Ingrese el nuevo género'
  genero2 = gets.chomp
  personas[cambio].update({name:nombre2, age:edad2, city:comuna2, genre:genero2})
  print personas

when option == 3
  print personas
  puts '
  Ingrese el índice del array que quiere eliminar'
  eliminar = gets.chomp.to_i
  personas.delete_at(eliminar)
  puts "Se ha eliminado la persona que estaba en el índice #{eliminar}. El nuevo array es: "
  puts personas

when option == 4
  cantidad_personas = personas.count
  puts "Hay #{cantidad_personas} personas"

when option == 5
  b = personas.map { |ele| ele }
  b.each do |hash|
    puts hash.values[2]
  end

when option == 6
  matriz2 = personas.map { |ele| ele }
  matriz2.each do |v|
    puts v.values[0] if (v.values[1].to_i > 20) && (v.values[1].to_i < 25)
  end

when option == 7
  matriz3 = personas.map { |ele| ele }
  sum = 0
  matriz3.each do |v|
    puts sum += v.values[1].to_i
  end

when option == 8
  matriz3 = personas.map { |ele| ele }
  sum = 0
  matriz3.each do |v|
    puts (sum += v.values[1].to_i) / matriz3.length
  end

when option == 9
  puts personas.group_by { |ele| ele.values[3] }

when option == 10
  continuar = false
end

end
