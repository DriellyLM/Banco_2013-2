require 'spec_helper'

describe "emprestimos/show" do
  before(:each) do
    @emprestimo = assign(:emprestimo, stub_model(Emprestimo,
      :datacontrato => "Datacontrato",
      :valorcontratado => "Valorcontratado",
      :numeroparcelas => "Numeroparcelas",
      :contacorrente => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datacontrato/)
    rendered.should match(/Valorcontratado/)
    rendered.should match(/Numeroparcelas/)
    rendered.should match(//)
  end
end
