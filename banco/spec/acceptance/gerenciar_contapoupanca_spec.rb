# coding: utf-8
require 'spec_helper'

feature 'gerenciar conta poupanca' do

  scenario 'incluir conta poupanca' do #, :javascript => true  do
	
    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    visit new_contapoupanca_path

    preencher_e_verificar_contapoupanca
   

  end

  scenario 'alterar conta poupanca' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    contapoupanca = FactoryGirl.create(:contapoupanca, :contacorrente => contacorrente)

    visit edit_contapoupanca_path(contapoupanca)

    preencher_e_verificar_contapoupanca


  end

  scenario 'excluir conta poupanca' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    contapoupanca = FactoryGirl.create(:contapoupanca, :contacorrente => contacorrente)

    visit contapoupancas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_contapoupanca


    fill_in 'Sequencial', :with => '501'
    fill_in 'Saldo', :with => '1800.00'
    
    select '1234-0', :from => 'Conta Corrente'
    
    click_button 'Salvar'
    
    page.should have_content 'Sequencial: 501'
    page.should have_content 'Saldo: 1800.00'
    page.should have_content 'Contacorrente: 1234-0'
    
  end

      

end
