require 'spec_helper'

describe "pessoafisicas/show" do
  before(:each) do
    @pessoafisica = assign(:pessoafisica, stub_model(Pessoafisica,
      :nome => "Nome",
      :datanascimento => "Datanascimento",
      :endereco => "Endereco",
      :numero => "Numero",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :telefone => "Telefone",
      :cpf => "Cpf",
      :contacorrente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Datanascimento/)
    rendered.should match(/Endereco/)
    rendered.should match(/Numero/)
    rendered.should match(/Complemento/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
    rendered.should match(/Telefone/)
    rendered.should match(/Cpf/)
    rendered.should match(//)
  end
end
