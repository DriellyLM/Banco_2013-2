class CreateContapoupancas < ActiveRecord::Migration
  def change
    create_table :contapoupancas do |t|
      t.string :sequencial
      t.string :saldo
      t.references :contacorrente, index: true

      t.timestamps
    end
  end
end
