require 'spec_helper'

describe "emprestimos/new" do
  before(:each) do
    assign(:emprestimo, stub_model(Emprestimo,
      :datacontrato => "MyString",
      :valorcontratado => "MyString",
      :numeroparcelas => "MyString",
      :contacorrente => nil
    ).as_new_record)
  end

  it "renders new emprestimo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", emprestimos_path, "post" do
      assert_select "input#emprestimo_datacontrato[name=?]", "emprestimo[datacontrato]"
      assert_select "input#emprestimo_valorcontratado[name=?]", "emprestimo[valorcontratado]"
      assert_select "input#emprestimo_numeroparcelas[name=?]", "emprestimo[numeroparcelas]"
      assert_select "input#emprestimo_contacorrente[name=?]", "emprestimo[contacorrente]"
    end
  end
end
