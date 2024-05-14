require 'rails_helper'

RSpec.describe "Widget management", type: :request do
  describe 'Cria novo padawan' do
    it 'com sucesso' do
      #Act
      post "/padawans", params: { name: 'Matheus', age: 24, city: 'Poços de Caldas', email: 'matheus@email.com' }
      #Assert
      expect(response).to have_http_status(:created)
      expect(response.body).to include('Matheus')
    end

    it 'deixando de preencher informações necessárias' do
      post "/padawans", params: { name: '', age: 25, city: 'Poços de Caldas', email: '' }

      expect(response).to have_http_status(:precondition_failed)
      expect(response.body).to include('blank')
    end
  end
end
