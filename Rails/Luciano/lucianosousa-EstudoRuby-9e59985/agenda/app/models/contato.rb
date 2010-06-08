class Contato < ActiveRecord::Base
  validates_presence_of :nome, :data_de_nascimento, :telefone, :message => ": Preenchimento obrigatorio"
end
