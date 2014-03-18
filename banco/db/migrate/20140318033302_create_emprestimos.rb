class CreateEmprestimos < ActiveRecord::Migration
  def change
    create_table :emprestimos do |t|
      t.string :datacontrato
      t.string :valorcontratado
      t.string :numeroparcelas
      t.references :contacorrente, index: true

      t.timestamps
    end
  end
end
