require 'test_helper'

class DerslersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dersler = derslers(:one)
  end

  test "should get index" do
    get derslers_url
    assert_response :success
  end

  test "should get new" do
    get new_dersler_url
    assert_response :success
  end

  test "should create dersler" do
    assert_difference('Dersler.count') do
      post derslers_url, params: { dersler: { aciklama: @dersler.aciklama, baslik: @dersler.baslik, konu: @dersler.konu, tarih: @dersler.tarih } }
    end

    assert_redirected_to dersler_url(Dersler.last)
  end

  test "should show dersler" do
    get dersler_url(@dersler)
    assert_response :success
  end

  test "should get edit" do
    get edit_dersler_url(@dersler)
    assert_response :success
  end

  test "should update dersler" do
    patch dersler_url(@dersler), params: { dersler: { aciklama: @dersler.aciklama, baslik: @dersler.baslik, konu: @dersler.konu, tarih: @dersler.tarih } }
    assert_redirected_to dersler_url(@dersler)
  end

  test "should destroy dersler" do
    assert_difference('Dersler.count', -1) do
      delete dersler_url(@dersler)
    end

    assert_redirected_to derslers_url
  end
end
