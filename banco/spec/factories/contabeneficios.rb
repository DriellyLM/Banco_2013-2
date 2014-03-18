# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contabeneficio do
    conta "MyString"
    saldo "MyString"
    pessoafisica nil
  end
end
