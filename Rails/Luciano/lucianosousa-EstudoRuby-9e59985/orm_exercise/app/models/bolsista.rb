class Bolsista < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :projeto

  validates_presence_of :aluno_id, :message => "preenchimento obrigatorio"
  validates_presence_of :projeto_id, :message => "preenchimento obrigatorio"

end
