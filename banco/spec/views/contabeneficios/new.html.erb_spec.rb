require 'spec_helper'

describe "contabeneficios/new" do
  before(:each) do
    assign(:contabeneficio, stub_model(Contabeneficio,
      :conta => "MyString",
      :saldo => "MyString",
      :pessoafisica => nil
    ).as_new_record)
  end

  it "renders new contabeneficio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contabeneficios_path, "post" do
      assert_select "input#contabeneficio_conta[name=?]", "contabeneficio[conta]"
      assert_select "input#contabeneficio_saldo[name=?]", "contabeneficio[saldo]"
      assert_select "input#contabeneficio_pessoafisica[name=?]", "contabeneficio[pessoafisica]"
    end
  end
end
