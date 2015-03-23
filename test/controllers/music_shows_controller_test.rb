require 'test_helper'

class MusicShowsControllerTest < ActionController::TestCase
  setup do
    @music_show = music_shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_show" do
    assert_difference('MusicShow.count') do
      post :create, music_show: { band_name: @music_show.band_name, date_of_show: @music_show.date_of_show, location: @music_show.location, ticket_price: @music_show.ticket_price }
    end

    assert_redirected_to music_show_path(assigns(:music_show))
  end

  test "should show music_show" do
    get :show, id: @music_show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_show
    assert_response :success
  end

  test "should update music_show" do
    patch :update, id: @music_show, music_show: { band_name: @music_show.band_name, date_of_show: @music_show.date_of_show, location: @music_show.location, ticket_price: @music_show.ticket_price }
    assert_redirected_to music_show_path(assigns(:music_show))
  end

  test "should destroy music_show" do
    assert_difference('MusicShow.count', -1) do
      delete :destroy, id: @music_show
    end

    assert_redirected_to music_shows_path
  end
end
