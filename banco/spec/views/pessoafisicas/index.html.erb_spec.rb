require 'spec_helper'

describe "pessoafisicas/index" do
  before(:each) do
    assign(:pessoafisicas, [
      stub_model(Pessoafisica,
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
      ),
      stub_model(Pessoafisica,
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
      )
    ])
  end

  it "renders a list of pessoafisicas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Datanascimento".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
