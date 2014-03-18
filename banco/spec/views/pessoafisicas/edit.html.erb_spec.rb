require 'spec_helper'

describe "pessoafisicas/edit" do
  before(:each) do
    @pessoafisica = assign(:pessoafisica, stub_model(Pessoafisica,
      :nome => "MyString",
      :datanascimento => "MyString",
      :endereco => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :telefone => "MyString",
      :cpf => "MyString",
      :contacorrente => nil
    ))
  end

  it "renders the edit pessoafisica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pessoafisica_path(@pessoafisica), "post" do
      assert_select "input#pessoafisica_nome[name=?]", "pessoafisica[nome]"
      assert_select "input#pessoafisica_datanascimento[name=?]", "pessoafisica[datanascimento]"
      assert_select "input#pessoafisica_endereco[name=?]", "pessoafisica[endereco]"
      assert_select "input#pessoafisica_numero[name=?]", "pessoafisica[numero]"
      assert_select "input#pessoafisica_complemento[name=?]", "pessoafisica[complemento]"
      assert_select "input#pessoafisica_bairro[name=?]", "pessoafisica[bairro]"
      assert_select "input#pessoafisica_cidade[name=?]", "pessoafisica[cidade]"
      assert_select "input#pessoafisica_estado[name=?]", "pessoafisica[estado]"
      assert_select "input#pessoafisica_telefone[name=?]", "pessoafisica[telefone]"
      assert_select "input#pessoafisica_cpf[name=?]", "pessoafisica[cpf]"
      assert_select "input#pessoafisica_contacorrente[name=?]", "pessoafisica[contacorrente]"
    end
  end
end
