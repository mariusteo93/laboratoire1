require 'test_helper'

class OrganismesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organisme = organismes(:one)
  end

  test "should get index" do
    get organismes_url
    assert_response :success
  end

  test "should get new" do
    get new_organisme_url
    assert_response :success
  end

  test "should create organisme" do
    assert_difference('Organisme.count') do
      post organismes_url, params: { organisme: { Adresse: @organisme.Adresse, Courriel: @organisme.Courriel, Fax: @organisme.Fax, Nom: @organisme.Nom, Telephone: @organisme.Telephone } }
    end

    assert_redirected_to organisme_url(Organisme.last)
  end

  test "should show organisme" do
    get organisme_url(@organisme)
    assert_response :success
  end

  test "should get edit" do
    get edit_organisme_url(@organisme)
    assert_response :success
  end

  test "should update organisme" do
    patch organisme_url(@organisme), params: { organisme: { Adresse: @organisme.Adresse, Courriel: @organisme.Courriel, Fax: @organisme.Fax, Nom: @organisme.Nom, Telephone: @organisme.Telephone } }
    assert_redirected_to organisme_url(@organisme)
  end

  test "should destroy organisme" do
    assert_difference('Organisme.count', -1) do
      delete organisme_url(@organisme)
    end

    assert_redirected_to organismes_url
  end
end
