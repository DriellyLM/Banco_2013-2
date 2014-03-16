require 'spec_helper'

describe "contacorrentes/edit" do
  before(:each) do
    @contacorrente = assign(:contacorrente, stub_model(Contacorrente,
      :conta => "MyString",
      :saldo => "MyString"
    ))
  end

  it "renders the edit contacorrente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacorrente_path(@contacorrente), "post" do
      assert_select "input#contacorrente_conta[name=?]", "contacorrente[conta]"
      assert_select "input#contacorrente_saldo[name=?]", "contacorrente[saldo]"
    end
  end
end
