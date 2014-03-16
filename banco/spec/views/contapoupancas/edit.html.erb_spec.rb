require 'spec_helper'

describe "contapoupancas/edit" do
  before(:each) do
    @contapoupanca = assign(:contapoupanca, stub_model(Contapoupanca,
      :sequencial => "MyString",
      :saldo => "MyString",
      :contacorrente => nil
    ))
  end

  it "renders the edit contapoupanca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contapoupanca_path(@contapoupanca), "post" do
      assert_select "input#contapoupanca_sequencial[name=?]", "contapoupanca[sequencial]"
      assert_select "input#contapoupanca_saldo[name=?]", "contapoupanca[saldo]"
      assert_select "input#contapoupanca_contacorrente[name=?]", "contapoupanca[contacorrente]"
    end
  end
end
