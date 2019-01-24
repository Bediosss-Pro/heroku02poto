require "application_system_test_case"

class PotosTest < ApplicationSystemTestCase
  setup do
    @poto = potos(:one)
  end

  test "visiting the index" do
    visit potos_url
    assert_selector "h1", text: "Potos"
  end

  test "creating a Poto" do
    visit potos_url
    click_on "New Poto"

    fill_in "Contenu", with: @poto.contenu
    fill_in "Titre", with: @poto.titre
    click_on "Create Poto"

    assert_text "Poto was successfully created"
    click_on "Back"
  end

  test "updating a Poto" do
    visit potos_url
    click_on "Edit", match: :first

    fill_in "Contenu", with: @poto.contenu
    fill_in "Titre", with: @poto.titre
    click_on "Update Poto"

    assert_text "Poto was successfully updated"
    click_on "Back"
  end

  test "destroying a Poto" do
    visit potos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poto was successfully destroyed"
  end
end
