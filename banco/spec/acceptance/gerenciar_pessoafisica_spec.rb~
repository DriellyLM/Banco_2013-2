# coding: utf-8
require 'spec_helper'

feature 'gerenciar emprestimo' do

  scenario 'incluir emprestimo' do #, :javascript => true  do
	
    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    visit new_emprestimo_path

    preencher_e_verificar_emprestimo
   

  end

  scenario 'alterar emprestimo' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    emprestimo = FactoryGirl.create(:emprestimo, :contacorrente => contacorrente)

    visit edit_emprestimo_path(emprestimo)

    preencher_e_verificar_emprestimo


  end

  scenario 'excluir emprestimo' do #, :javascript => true  do

    contacorrente = FactoryGirl.create(:contacorrente, :conta => '1234-0')

    emprestimo = FactoryGirl.create(:emprestimo, :contacorrente => contacorrente)

    visit emprestimos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_emprestimo


    fill_in 'Data Contrato', :with => '2014-03-10'
    fill_in 'Valor Contratado', :with => '2000.00'
    fill_in 'Numero Parcelas', :with => '12'
    
    select '1234-0', :from => 'Conta Corrente'
    
    click_button 'Salvar'
    
    page.should have_content 'Data Contrato: 2014-03-10'
    page.should have_content 'Valor Contratado: 2000.00'
    page.should have_content 'Numero Parcelas: 12'
    page.should have_content 'Contacorrente: 1234-0'
    
  end

      

end
