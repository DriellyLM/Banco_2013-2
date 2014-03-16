require 'spec_helper'

describe "contacorrentes/new" do
  before(:each) do
    assign(:contacorrente, stub_model(Contacorrente,
      :conta => "MyString",
      :saldo => "MyString"
    ).as_new_record)
  end

  it "renders new contacorrente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacorrentes_path, "post" do
      assert_select "input#contacorrente_conta[name=?]", "contacorrente[conta]"
      assert_select "input#contacorrente_saldo[name=?]", "contacorrente[saldo]"
    end
  end
end
