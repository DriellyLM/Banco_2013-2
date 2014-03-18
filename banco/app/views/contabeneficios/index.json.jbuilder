json.array!(@contabeneficios) do |contabeneficio|
  json.extract! contabeneficio, :id, :conta, :saldo, :pessoafisica_id
  json.url contabeneficio_url(contabeneficio, format: :json)
end
