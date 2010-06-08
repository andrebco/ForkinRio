class CreateRecursos < ActiveRecord::Migration
  def self.up
    create_table :recursos do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :recursos
  end
end
