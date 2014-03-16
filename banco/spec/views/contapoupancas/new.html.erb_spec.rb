require 'spec_helper'

describe "contapoupancas/new" do
  before(:each) do
    assign(:contapoupanca, stub_model(Contapoupanca,
      :sequencial => "MyString",
      :saldo => "MyString",
      :contacorrente => nil
    ).as_new_record)
  end

  it "renders new contapoupanca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contapoupancas_path, "post" do
      assert_select "input#contapoupanca_sequencial[name=?]", "contapoupanca[sequencial]"
      assert_select "input#contapoupanca_saldo[name=?]", "contapoupanca[saldo]"
      assert_select "input#contapoupanca_contacorrente[name=?]", "contapoupanca[contacorrente]"
    end
  end
end
