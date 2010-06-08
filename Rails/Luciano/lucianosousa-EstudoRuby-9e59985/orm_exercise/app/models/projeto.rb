class Projeto < ActiveRecord::Base
  has_many :bolsistas
  has_many :avaliacoes
  belongs_to :projeto

  validates_presence_of :projeto_id, :message => "preenchimento obrigatorio"
end
