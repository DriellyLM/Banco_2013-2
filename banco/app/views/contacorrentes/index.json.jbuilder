json.array!(@contacorrentes) do |contacorrente|
  json.extract! contacorrente, :id, :conta, :saldo
  json.url contacorrente_url(contacorrente, format: :json)
end
