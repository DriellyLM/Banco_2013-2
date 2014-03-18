class CreatePessoafisicas < ActiveRecord::Migration
  def change
    create_table :pessoafisicas do |t|
      t.string :nome
      t.string :datanascimento
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone
      t.string :cpf
      t.references :contacorrente, index: true

      t.timestamps
    end
  end
end
