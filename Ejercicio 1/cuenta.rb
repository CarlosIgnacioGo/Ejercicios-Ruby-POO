class Cuenta

	attr_accessor :nombreCliente, :numeroCuenta, :tipoInteres ,:saldo

	def initialize(nombreCliente,numeroCuenta,tipoInteres,saldo)
		@nombreCliente = nombreCliente
		@numeroCuenta = numeroCuenta
		@tipoInteres = tipoInteres
		@saldo = saldo
	end

	def ingreso(n)
		if n > 0
			@saldo += n
			return true
		else
			false
		end
	end

	def reintegro(n)
		if n > 0 && @saldo >= n
			@saldo -= n 
		 	return true
		else
			false
		end
	end

	def transferencia(cuentaDestino,n)
		reintegro(n)
		cuentaDestino.ingreso(n)
	end
end










