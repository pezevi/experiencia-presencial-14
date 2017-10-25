continuar = true
personas = []

while continuar

puts 'Elija una opción del menú, opción 10 para salir
(1) Ingresar datos de una persona: Nombre, Edad, Comuna y Género
(2) Permite editar los datos de la persona
(3)
(10) Salir '
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
  print personas
  puts 'Ingrese el índice del array que quiere modificar'
  cambio = gets.chomp.to_i
  print personas[cambio]
when option == 10
  continuar = false
end

end
