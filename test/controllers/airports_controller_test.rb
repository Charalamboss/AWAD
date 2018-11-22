require 'test_helper'

class AirportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airport = airports(:one)
  end

  test "should get index" do
    get airports_url
    assert_response :success
  end

  test "should get new" do
    get new_airport_url
    assert_response :success
  end

  test "should create airport" do
    assert_difference('Airport.count') do
      post airports_url, params: { airport: { Isocode: @airport.Isocode, city_id: @airport.city_id, country_id: @airport.country_id, latt: @airport.latt, long: @airport.long, name: @airport.name, wiki: @airport.wiki } }
    end

    assert_redirected_to airport_url(Airport.last)
  end

  test "should show airport" do
    get airport_url(@airport)
    assert_response :success
  end

  test "should get edit" do
    get edit_airport_url(@airport)
    assert_response :success
  end

  test "should update airport" do
    patch airport_url(@airport), params: { airport: { Isocode: @airport.Isocode, city_id: @airport.city_id, country_id: @airport.country_id, latt: @airport.latt, long: @airport.long, name: @airport.name, wiki: @airport.wiki } }
    assert_redirected_to airport_url(@airport)
  end

  test "should destroy airport" do
    assert_difference('Airport.count', -1) do
      delete airport_url(@airport)
    end

    assert_redirected_to airports_url
  end
end
