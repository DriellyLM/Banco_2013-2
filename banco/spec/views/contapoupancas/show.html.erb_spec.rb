require 'spec_helper'

describe "contapoupancas/show" do
  before(:each) do
    @contapoupanca = assign(:contapoupanca, stub_model(Contapoupanca,
      :sequencial => "Sequencial",
      :saldo => "Saldo",
      :contacorrente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sequencial/)
    rendered.should match(/Saldo/)
    rendered.should match(//)
  end
end
