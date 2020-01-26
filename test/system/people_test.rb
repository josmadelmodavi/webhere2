require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    check "Biblioteca" if @person.biblioteca
    check "Casa alugada" if @person.casa_alugada
    fill_in "Endereco", with: @person.endereco
    check "Escola alimentacao" if @person.escola_alimentacao
    fill_in "Escolaridade", with: @person.escolaridade
    check "Estuda" if @person.estuda
    fill_in "Integrantes familia", with: @person.integrantes_familia
    check "Laboratorio" if @person.laboratorio
    fill_in "Mae", with: @person.mae
    check "Mora com pais" if @person.mora_com_pais
    fill_in "Mora com quem", with: @person.mora_com_quem
    fill_in "Nascimento", with: @person.nascimento
    fill_in "Nome", with: @person.nome
    fill_in "Pai", with: @person.pai
    fill_in "Renda familiar", with: @person.renda_familiar
    check "Tempo integral" if @person.tempo_integral
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    check "Biblioteca" if @person.biblioteca
    check "Casa alugada" if @person.casa_alugada
    fill_in "Endereco", with: @person.endereco
    check "Escola alimentacao" if @person.escola_alimentacao
    fill_in "Escolaridade", with: @person.escolaridade
    check "Estuda" if @person.estuda
    fill_in "Integrantes familia", with: @person.integrantes_familia
    check "Laboratorio" if @person.laboratorio
    fill_in "Mae", with: @person.mae
    check "Mora com pais" if @person.mora_com_pais
    fill_in "Mora com quem", with: @person.mora_com_quem
    fill_in "Nascimento", with: @person.nascimento
    fill_in "Nome", with: @person.nome
    fill_in "Pai", with: @person.pai
    fill_in "Renda familiar", with: @person.renda_familiar
    check "Tempo integral" if @person.tempo_integral
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
