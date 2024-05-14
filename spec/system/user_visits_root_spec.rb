require 'rails_helper'

describe 'Usuário visita homepage' do
  it 'e visualiza página' do
    visit root_path

    expect(page).to have_content('Padawans')
    expect(page).not_to have_content('Sei lá')
  end
end
