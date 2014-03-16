require 'spec_helper'

describe "contacorrentes/index" do
  before(:each) do
    assign(:contacorrentes, [
      stub_model(Contacorrente,
        :conta => "Conta",
        :saldo => "Saldo"
      ),
      stub_model(Contacorrente,
        :conta => "Conta",
        :saldo => "Saldo"
      )
    ])
  end

  it "renders a list of contacorrentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Conta".to_s, :count => 2
    assert_select "tr>td", :text => "Saldo".to_s, :count => 2
  end
end
