require 'spec_helper'

describe "contabeneficios/index" do
  before(:each) do
    assign(:contabeneficios, [
      stub_model(Contabeneficio,
        :conta => "Conta",
        :saldo => "Saldo",
        :pessoafisica => nil
      ),
      stub_model(Contabeneficio,
        :conta => "Conta",
        :saldo => "Saldo",
        :pessoafisica => nil
      )
    ])
  end

  it "renders a list of contabeneficios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Conta".to_s, :count => 2
    assert_select "tr>td", :text => "Saldo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
