# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contapoupanca do
    sequencial "MyString"
    saldo "MyString"
    contacorrente nil
  end
end
