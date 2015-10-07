require_relative 'cuenta.rb'

cuenta1 = Cuenta.new("Carlos","1","1",1000)
cuenta2 = Cuenta.new("Ana","1","1",1000)


puts cuenta1.transferencia(cuenta2,1000)
puts "Saldo cuenta 1: #{cuenta1.saldo}"
puts "Saldo cuenta 2: #{cuenta2.saldo}"