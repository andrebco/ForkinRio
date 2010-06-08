class Avaliacao < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :assessor

  validates_presence_of :projeto_id, :message => "preenchimento obrigatorio"
  validates_presence_of :assessor_id, :message => "preenchimento obrigatorio"
end
