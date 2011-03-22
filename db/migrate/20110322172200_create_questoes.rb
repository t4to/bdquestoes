class CreateQuestoes < ActiveRecord::Migration
  def self.up
    create_table :questoes do |t|
      t.integer :prova_id
      t.string :pergunta
      t.string :resposta

      t.timestamps
    end
  end

  def self.down
    drop_table :questoes
  end
end
