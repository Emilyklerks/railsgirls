require 'test_helper'

class ActiviteitenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activiteit = activiteiten(:one)
  end

  test "should get index" do
    get activiteiten_url
    assert_response :success
  end

  test "should get new" do
    get new_activiteit_url
    assert_response :success
  end

  test "should create activiteit" do
    assert_difference('Activiteit.count') do
      post activiteiten_url, params: { activiteit: { afbeelding: @activiteit.afbeelding, beschrijving: @activiteit.beschrijving, naam: @activiteit.naam } }
    end

    assert_redirected_to activiteit_url(Activiteit.last)
  end

  test "should show activiteit" do
    get activiteit_url(@activiteit)
    assert_response :success
  end

  test "should get edit" do
    get edit_activiteit_url(@activiteit)
    assert_response :success
  end

  test "should update activiteit" do
    patch activiteit_url(@activiteit), params: { activiteit: { afbeelding: @activiteit.afbeelding, beschrijving: @activiteit.beschrijving, naam: @activiteit.naam } }
    assert_redirected_to activiteit_url(@activiteit)
  end

  test "should destroy activiteit" do
    assert_difference('Activiteit.count', -1) do
      delete activiteit_url(@activiteit)
    end

    assert_redirected_to activiteiten_url
  end
end
