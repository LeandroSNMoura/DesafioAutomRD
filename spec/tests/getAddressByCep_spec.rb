require_relative '../spec_helper.rb'

describe 'Dado ter um CEP válido' do
  context 'Quando realizar uma requisição para consultar o endereço' do
    it 'Então validar o logradour e DDD recebidos' do
      request = HTTParty.get(DATA['urlApiCep'])
      puts request
        
      expect(request.code).to eql(200)
      expect(request['logradouro']).to eql(DATA['addressData']['logradouro'])
      expect(request['ddd']).to eql(DATA['addressData']['ddd'])
    end
  end
end