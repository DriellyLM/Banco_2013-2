require 'spec_helper'

describe "emprestimos/edit" do
  before(:each) do
    @emprestimo = assign(:emprestimo, stub_model(Emprestimo,
      :datacontrato => "MyString",
      :valorcontratado => "MyString",
      :numeroparcelas => "MyString",
      :contacorrente => nil
    ))
  end

  it "renders the edit emprestimo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", emprestimo_path(@emprestimo), "post" do
      assert_select "input#emprestimo_datacontrato[name=?]", "emprestimo[datacontrato]"
      assert_select "input#emprestimo_valorcontratado[name=?]", "emprestimo[valorcontratado]"
      assert_select "input#emprestimo_numeroparcelas[name=?]", "emprestimo[numeroparcelas]"
      assert_select "input#emprestimo_contacorrente[name=?]", "emprestimo[contacorrente]"
    end
  end
end
