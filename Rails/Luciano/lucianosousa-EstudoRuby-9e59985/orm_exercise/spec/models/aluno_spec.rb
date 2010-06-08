require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Aluno do

  it "imprime nome do aluno" do
    aluno = Aluno.new
    aluno.nome="Luciano"
    aluno.nome.should == "Luciano"
  end
end


