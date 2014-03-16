require 'spec_helper'

describe "contacorrentes/show" do
  before(:each) do
    @contacorrente = assign(:contacorrente, stub_model(Contacorrente,
      :conta => "Conta",
      :saldo => "Saldo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Conta/)
    rendered.should match(/Saldo/)
  end
end
