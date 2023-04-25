
# programa de conta corrente
# deve ter um médodo de depósito
# deve ter um método de saque

class Conta
    attr_accessor :nome, :saldo

    def initialize(nome)
        self.nome = nome
        self.saldo = 0.00
    end

    def deposita(valor)
        self.saldo =+ valor
    end

    def saca(valor)
        mensagem = nil
        if valor > self.saldo
            mensagem = 'Saldo insuficiente.'
        else
            self.saldo -= valor
        end
        return mensagem
    end
end
