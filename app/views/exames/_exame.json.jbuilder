json.extract! exame, :id, :nome, :tipo, :status, :created_at, :updated_at
json.url exame_url(exame, format: :json)
