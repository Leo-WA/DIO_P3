numeros = []

puts "Insira 3 números (ou uma letra para sair):"

3.times do
  print "Número: "
  entrada = gets.chomp
  break unless entrada.match?(/^\d+$/)

  numero = entrada.to_i
  numeros.push(numero)
end

if numeros.empty?
  puts "Entrada inválida ou nenhum número foi inserido."
else
  numeros.map! { |num| num ** 3 } 
  puts "Números elevados à terceira potência:"
  puts numeros
end
