require 'spec_helper'

describe "contabeneficios/edit" do
  before(:each) do
    @contabeneficio = assign(:contabeneficio, stub_model(Contabeneficio,
      :conta => "MyString",
      :saldo => "MyString",
      :pessoafisica => nil
    ))
  end

  it "renders the edit contabeneficio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contabeneficio_path(@contabeneficio), "post" do
      assert_select "input#contabeneficio_conta[name=?]", "contabeneficio[conta]"
      assert_select "input#contabeneficio_saldo[name=?]", "contabeneficio[saldo]"
      assert_select "input#contabeneficio_pessoafisica[name=?]", "contabeneficio[pessoafisica]"
    end
  end
end
