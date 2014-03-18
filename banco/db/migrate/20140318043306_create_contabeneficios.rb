class CreateContabeneficios < ActiveRecord::Migration
  def change
    create_table :contabeneficios do |t|
      t.string :conta
      t.string :saldo
      t.references :pessoafisica, index: true

      t.timestamps
    end
  end
end
