require 'spec_helper'

describe "contapoupancas/index" do
  before(:each) do
    assign(:contapoupancas, [
      stub_model(Contapoupanca,
        :sequencial => "Sequencial",
        :saldo => "Saldo",
        :contacorrente => nil
      ),
      stub_model(Contapoupanca,
        :sequencial => "Sequencial",
        :saldo => "Saldo",
        :contacorrente => nil
      )
    ])
  end

  it "renders a list of contapoupancas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sequencial".to_s, :count => 2
    assert_select "tr>td", :text => "Saldo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
