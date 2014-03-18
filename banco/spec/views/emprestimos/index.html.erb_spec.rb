require 'spec_helper'

describe "emprestimos/index" do
  before(:each) do
    assign(:emprestimos, [
      stub_model(Emprestimo,
        :datacontrato => "Datacontrato",
        :valorcontratado => "Valorcontratado",
        :numeroparcelas => "Numeroparcelas",
        :contacorrente => nil
      ),
      stub_model(Emprestimo,
        :datacontrato => "Datacontrato",
        :valorcontratado => "Valorcontratado",
        :numeroparcelas => "Numeroparcelas",
        :contacorrente => nil
      )
    ])
  end

  it "renders a list of emprestimos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datacontrato".to_s, :count => 2
    assert_select "tr>td", :text => "Valorcontratado".to_s, :count => 2
    assert_select "tr>td", :text => "Numeroparcelas".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
