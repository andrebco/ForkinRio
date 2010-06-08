class Aluno < ActiveRecord::Base
  has_many :bolsistas
end
