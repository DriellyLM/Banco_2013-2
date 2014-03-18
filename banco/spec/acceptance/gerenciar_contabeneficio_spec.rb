# coding: utf-8
require 'spec_helper'

feature 'gerenciar conta beneficio' do

  scenario 'incluir conta beneficio' do #, :javascript => true  do
	
    pessoafisica = FactoryGirl.create(:pessoafisica, :nome => 'Drielly Marques')

    visit new_contabeneficio_path

    preencher_e_verificar_contabeneficio
   

  end

  scenario 'alterar conta beneficio' do #, :javascript => true  do

    pessoafisica = FactoryGirl.create(:pessoafisica, :nome => 'Drielly Marques')

    contabeneficio = FactoryGirl.create(:contabeneficio, :pessoafisica => pessoafisica)

    visit edit_contabeneficio_path(contabeneficio)

    preencher_e_verificar_contabeneficio


  end

  scenario 'excluir conta beneficio' do #, :javascript => true  do

    pessoafisica = FactoryGirl.create(:pessoafisica, :nome => 'Drielly Marques')

    contabeneficio = FactoryGirl.create(:contabeneficio, :pessoafisica => pessoafisica)

    visit contabeneficios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_contabeneficio


    fill_in 'Conta', :with => '0101789-5'
    fill_in 'Saldo', :with => '724.00'

    select 'Drielly Marques', :from => 'Pessoa Fisica'
    
    click_button 'Salvar'
    
    page.should have_content 'Conta: 0101789-5'
    page.should have_content 'Saldo: 724.00'
    page.should have_content 'Pessoafisica: Drielly Marques'
    
  end

      

end
