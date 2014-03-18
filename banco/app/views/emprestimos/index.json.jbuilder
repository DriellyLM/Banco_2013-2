json.array!(@emprestimos) do |emprestimo|
  json.extract! emprestimo, :id, :datacontrato, :valorcontratado, :numeroparcelas, :contacorrente_id
  json.url emprestimo_url(emprestimo, format: :json)
end
