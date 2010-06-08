class Recurso < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :avaliacao

  validates_presence_of :projeto_id, :message => "preenchimento obrigatorio"
  validates_presence_of :avaliacao_id, :message => "preenchimento obrigatorio"

end
