require 'rails_helper'

RSpec.describe "laboratorios/show", type: :view do
  before(:each) do
    @laboratorio = assign(:laboratorio, Laboratorio.create!(
      :nome => "Nome",
      :cnpj => "Cnpj",
      :rua => "Rua",
      :bairro => "Bairro",
      :logradouro => "Logradouro",
      :numero => 2,
      :complemento => "Complemento",
      :cep => 3,
      :cidade => "Cidade",
      :estado => "Estado",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Rua/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Logradouro/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Complemento/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/Estado/)
    expect(rendered).to match(/false/)
  end
end
