require 'test_helper'

class OrganismeReferantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organisme_referant = organisme_referants(:one)
  end

  test "should get index" do
    get organisme_referants_url
    assert_response :success
  end

  test "should get new" do
    get new_organisme_referant_url
    assert_response :success
  end

  test "should create organisme_referant" do
    assert_difference('OrganismeReferant.count') do
      post organisme_referants_url, params: { organisme_referant: { codePostal: @organisme_referant.codePostal, courriel: @organisme_referant.courriel, etat: @organisme_referant.etat, noCivique: @organisme_referant.noCivique, nom: @organisme_referant.nom, province: @organisme_referant.province, rue: @organisme_referant.rue, siteWeb: @organisme_referant.siteWeb, telephoneBureau: @organisme_referant.telephoneBureau, telephoneTelecopie: @organisme_referant.telephoneTelecopie, ville: @organisme_referant.ville } }
    end

    assert_redirected_to organisme_referant_url(OrganismeReferant.last)
  end

  test "should show organisme_referant" do
    get organisme_referant_url(@organisme_referant)
    assert_response :success
  end

  test "should get edit" do
    get edit_organisme_referant_url(@organisme_referant)
    assert_response :success
  end

  test "should update organisme_referant" do
    patch organisme_referant_url(@organisme_referant), params: { organisme_referant: { codePostal: @organisme_referant.codePostal, courriel: @organisme_referant.courriel, etat: @organisme_referant.etat, noCivique: @organisme_referant.noCivique, nom: @organisme_referant.nom, province: @organisme_referant.province, rue: @organisme_referant.rue, siteWeb: @organisme_referant.siteWeb, telephoneBureau: @organisme_referant.telephoneBureau, telephoneTelecopie: @organisme_referant.telephoneTelecopie, ville: @organisme_referant.ville } }
    assert_redirected_to organisme_referant_url(@organisme_referant)
  end

  test "should destroy organisme_referant" do
    assert_difference('OrganismeReferant.count', -1) do
      delete organisme_referant_url(@organisme_referant)
    end

    assert_redirected_to organisme_referants_url
  end
end
