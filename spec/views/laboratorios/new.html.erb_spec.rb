require 'rails_helper'

RSpec.describe "laboratorios/new", type: :view do
  before(:each) do
    assign(:laboratorio, Laboratorio.new(
      :nome => "MyString",
      :cnpj => "MyString",
      :rua => "MyString",
      :bairro => "MyString",
      :logradouro => "MyString",
      :numero => 1,
      :complemento => "MyString",
      :cep => 1,
      :cidade => "MyString",
      :estado => "MyString",
      :status => false
    ))
  end

  it "renders new laboratorio form" do
    render

    assert_select "form[action=?][method=?]", laboratorios_path, "post" do

      assert_select "input[name=?]", "laboratorio[nome]"

      assert_select "input[name=?]", "laboratorio[cnpj]"

      assert_select "input[name=?]", "laboratorio[rua]"

      assert_select "input[name=?]", "laboratorio[bairro]"

      assert_select "input[name=?]", "laboratorio[logradouro]"

      assert_select "input[name=?]", "laboratorio[numero]"

      assert_select "input[name=?]", "laboratorio[complemento]"

      assert_select "input[name=?]", "laboratorio[cep]"

      assert_select "input[name=?]", "laboratorio[cidade]"

      assert_select "input[name=?]", "laboratorio[estado]"

      assert_select "input[name=?]", "laboratorio[status]"
    end
  end
end
