class CreateAvaliacoes < ActiveRecord::Migration
  def self.up
    create_table :avaliacoes do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :avaliacoes
  end
end
