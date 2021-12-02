FactoryBot.define do
  factory :laboratorio do
    nome { "MyString" }
    cnpj { "MyString" }
    rua { "MyString" }
    bairro { "MyString" }
    logradouro { "MyString" }
    numero { 1 }
    complemento { "MyString" }
    cep { 1 }
    cidade { "MyString" }
    estado { "MyString" }
    status { false }
  end
end
