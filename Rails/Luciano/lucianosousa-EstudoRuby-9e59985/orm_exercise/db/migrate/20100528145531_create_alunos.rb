class CreateAlunos < ActiveRecord::Migration
  def self.up
    create_table :alunos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :alunos
  end
end
