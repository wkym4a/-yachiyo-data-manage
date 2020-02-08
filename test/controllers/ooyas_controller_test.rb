require 'test_helper'

class OoyasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ooya = ooyas(:one)
  end

  test "should get index" do
    get ooyas_url
    assert_response :success
  end

  test "should get new" do
    get new_ooya_url
    assert_response :success
  end

  test "should create ooya" do
    assert_difference('Ooya.count') do
      post ooyas_url, params: { ooya: { address1: @ooya.address1, address2: @ooya.address2, memo: @ooya.memo, mobile: @ooya.mobile, name: @ooya.name, name_kana: @ooya.name_kana, surname: @ooya.surname, surname_kana: @ooya.surname_kana, tel: @ooya.tel, zip_cd: @ooya.zip_cd } }
    end

    assert_redirected_to ooya_url(Ooya.last)
  end

  test "should show ooya" do
    get ooya_url(@ooya)
    assert_response :success
  end

  test "should get edit" do
    get edit_ooya_url(@ooya)
    assert_response :success
  end

  test "should update ooya" do
    patch ooya_url(@ooya), params: { ooya: { address1: @ooya.address1, address2: @ooya.address2, memo: @ooya.memo, mobile: @ooya.mobile, name: @ooya.name, name_kana: @ooya.name_kana, surname: @ooya.surname, surname_kana: @ooya.surname_kana, tel: @ooya.tel, zip_cd: @ooya.zip_cd } }
    assert_redirected_to ooya_url(@ooya)
  end

  test "should destroy ooya" do
    assert_difference('Ooya.count', -1) do
      delete ooya_url(@ooya)
    end

    assert_redirected_to ooyas_url
  end
end
