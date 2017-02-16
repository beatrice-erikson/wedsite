require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get location" do
    get info_location_url
    assert_response :success
  end

  test "should get ceremony" do
    get info_ceremony_url
    assert_response :success
  end

  test "should get our-relationship" do
    get info_our-relationship_url
    assert_response :success
  end

  test "should get registry" do
    get info_registry_url
    assert_response :success
  end

  test "should get faq" do
    get info_faq_url
    assert_response :success
  end

end
