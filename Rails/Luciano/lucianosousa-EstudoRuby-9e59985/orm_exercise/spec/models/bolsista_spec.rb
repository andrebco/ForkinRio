require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Bolsista do

  it "imprime nome dos alunos" do
    a1 = Aluno.new
    a1.nome="Luciano"
    
    bolsa01 = Bolsista.new
    bolsa01.nome="Bolsa 1"
    
    bolsa02 = Bolsista.new
    bolsa02.nome="Bolsa 2"    
    
    a1.bolsistas<<bolsa01    
    a1.bolsistas<<bolsa02
    
    a1.bolsistas.each do |n|
      n.nome
    end
  end
end
