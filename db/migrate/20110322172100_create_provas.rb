class CreateProvas < ActiveRecord::Migration
  def self.up
    create_table :provas do |t|
      t.integer :turma_id
      t.string :materia
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :provas
  end
end
