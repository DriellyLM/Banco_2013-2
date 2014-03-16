class CreateContacorrentes < ActiveRecord::Migration
  def change
    create_table :contacorrentes do |t|
      t.string :conta
      t.string :saldo

      t.timestamps
    end
  end
end
