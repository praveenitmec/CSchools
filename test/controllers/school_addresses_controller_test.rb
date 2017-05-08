require 'test_helper'

class SchoolAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_address = school_addresses(:one)
  end

  test "should get index" do
    get school_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_school_address_url
    assert_response :success
  end

  test "should create school_address" do
    assert_difference('SchoolAddress.count') do
      post school_addresses_url, params: { school_address: { city: @school_address.city, line: @school_address.line, neighborhood: @school_address.neighborhood, phone_number: @school_address.phone_number, school_id: @school_address.school_id, state: @school_address.state, state_code: @school_address.state_code, street: @school_address.street, zip_code: @school_address.zip_code } }
    end

    assert_redirected_to school_address_url(SchoolAddress.last)
  end

  test "should show school_address" do
    get school_address_url(@school_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_address_url(@school_address)
    assert_response :success
  end

  test "should update school_address" do
    patch school_address_url(@school_address), params: { school_address: { city: @school_address.city, line: @school_address.line, neighborhood: @school_address.neighborhood, phone_number: @school_address.phone_number, school_id: @school_address.school_id, state: @school_address.state, state_code: @school_address.state_code, street: @school_address.street, zip_code: @school_address.zip_code } }
    assert_redirected_to school_address_url(@school_address)
  end

  test "should destroy school_address" do
    assert_difference('SchoolAddress.count', -1) do
      delete school_address_url(@school_address)
    end

    assert_redirected_to school_addresses_url
  end
end
