# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :emprestimo do
    datacontrato "MyString"
    valorcontratado "MyString"
    numeroparcelas "MyString"
    contacorrente nil
  end
end
