# coding: utf-8
require 'spec_helper'

feature 'gerenciar pessoa fisica' do

    scenario 'incluir pessoa fisica' do #, :javascript => true  do
    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')
    visit new_pessoafisica_path
    preencher_e_verificar_pessoafisica
    end

  scenario 'alterar pessoa fisica' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')
    pessoafisica = FactoryGirl.create(:pessoafisica, :contacorrente => contacorrente)
    visit edit_pessoafisica_path(pessoafisica)
    preencher_e_verificar_pessoafisica
  end

  scenario 'excluir pessoa fisica' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')
    pessoafisica = FactoryGirl.create(:pessoafisica, :contacorrente => contacorrente)
    visit pessoafisicas_path
    click_link 'Excluir'
  end



  def preencher_e_verificar_pessoafisica


    fill_in 'Nome', :with => 'Drielly Marques'
    fill_in 'Data Nascimento', :with => '1992-11-12'
    fill_in 'Endereco', :with => 'Rua Manoel Coelho'
    fill_in 'Numero', :with => '100'
    fill_in 'Complemento', :with => 'Casa'
    fill_in 'Bairro', :with => 'Parque Santo Amaro'
    fill_in 'Cidade', :with => 'Campos dos Goytacazes'
    fill_in 'Estado', :with => 'Rio de Janeiro'
    fill_in 'Telefone', :with => '99999-1234'
    fill_in 'Cpf', :with => '123.456.789-00'
    
    select '1234-0', :from => 'Conta Corrente'
    
    click_button 'Salvar'
    
    page.should have_content 'Nome: Drielly Marques'
    page.should have_content 'Data Nascimento: 1992-11-12'
    page.should have_content 'Endereco: Rua Manoel Coelho'
    page.should have_content 'Numero: 100'
    page.should have_content 'Complemento: Casa'
    page.should have_content 'Bairro: Parque Santo Amaro'
    page.should have_content 'Cidade: Campos dos Goytacazes'
    page.should have_content 'Estado: Rio de Janeiro'
    page.should have_content 'Telefone: 99999-1234'
    page.should have_content 'Cpf: 123.456.789-00'
    page.should have_content 'Contacorrente: 1234-0'
    
  end

      

end
