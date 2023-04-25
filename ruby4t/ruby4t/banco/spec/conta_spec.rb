require_relative '../app/conta'

## TDD => Testing Driven Development
# (Desenvolvimento guiado por testes)

describe('Conta') do

    it('deve realizar um saque') do
        c = Conta.new('Fernando')
        c.deposita(100.00)
        c.saca(50.00)
        expect(c.saldo).to eql 50.00
    end

    it('deve exibir mensagem de saldo insuficiente') do
        c = Conta.new('Oscar')
        c.deposita(100.00)
        msg = c.saca(101.00)
        expect(c.saldo).to eql 100.00
        expect(msg).to eql 'Saldo insuficiente.'
    end


end