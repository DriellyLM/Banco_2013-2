# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoafisica do
    nome "MyString"
    datanascimento "MyString"
    endereco "MyString"
    numero "MyString"
    complemento "MyString"
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    telefone "MyString"
    cpf "MyString"
    contacorrente nil
  end
end
