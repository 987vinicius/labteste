require 'rails_helper'

RSpec.describe "laboratorios/index", type: :view do
  before(:each) do
    assign(:laboratorios, [
      Laboratorio.create!(
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
      ),
      Laboratorio.create!(
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
      )
    ])
  end

  it "renders a list of laboratorios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
