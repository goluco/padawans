require 'rails_helper'

RSpec.describe "", type: :request do
  describe 'usuario ve os padawans' do
    it 'com sucesso' do
      #Arrange
      padawan_1 = Padawan.create(name: 'Matheus', age: 24, city: 'Poços de Caldas', email: 'matheus@email.com')
      padawan_2 = Padawan.create(name: 'Bruna', age: 34, city: 'Poços de Caldas', email: 'bruna@email.com')
      #Act
      get "/padawans"
      #Assert
      expect(response).to have_http_status(:ok)
      expect(response.body).to include("Matheus")
      expect(response.body).to include("Bruna")
    end
  end
end
