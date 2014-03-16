json.array!(@contapoupancas) do |contapoupanca|
  json.extract! contapoupanca, :id, :sequencial, :saldo, :contacorrente_id
  json.url contapoupanca_url(contapoupanca, format: :json)
end
