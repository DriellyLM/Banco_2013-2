json.array!(@pessoafisicas) do |pessoafisica|
  json.extract! pessoafisica, :id, :nome, :datanascimento, :endereco, :numero, :complemento, :bairro, :cidade, :estado, :telefone, :cpf, :contacorrente_id
  json.url pessoafisica_url(pessoafisica, format: :json)
end
