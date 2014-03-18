require 'spec_helper'

describe "contabeneficios/show" do
  before(:each) do
    @contabeneficio = assign(:contabeneficio, stub_model(Contabeneficio,
      :conta => "Conta",
      :saldo => "Saldo",
      :pessoafisica => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Conta/)
    rendered.should match(/Saldo/)
    rendered.should match(//)
  end
end
