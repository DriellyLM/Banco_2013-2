# coding: utf-8

require 'spec_helper'

feature 'gerenciar conta corrente' do

	scenario 'incluir conta corrente', :javascript => true do
		
		visit new_contacorrente_path
		preencher_e_verificar_contacorrente

  	end

	scenario 'alterar conta corrente' do #, :js => true do
	
		contacorrente = FactoryGirl.create(:contacorrente)
    		visit edit_contacorrente_path(contacorrente)
    		preencher_e_verificar_contacorrente

	end

	scenario 'excluir conta corrente' do #, :javascript => true do
        	
        	contacorrente = FactoryGirl.create(:contacorrente)
        	visit contacorrentes_path
        	click_link 'Excluir'

	end

   def preencher_e_verificar_contacorrente
      
      fill_in 'Conta', :with => "1234-0"
      fill_in 'Saldo', :with => "1800.00"     
 
      click_button 'Salvar'

      page.should have_content 'Conta: 1234-0'
      page.should have_content 'Saldo: 1800.00'

   end
end
