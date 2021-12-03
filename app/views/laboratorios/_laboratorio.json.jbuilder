json.extract! laboratorio, :id, :nome, :cnpj, :rua, :bairro, :logradouro, :numero, :complemento, :cep, :cidade, :estado, :status, :created_at, :updated_at
json.url laboratorio_url(laboratorio, format: :json)
