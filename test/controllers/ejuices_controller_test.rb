require 'test_helper'

class EjuicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ejuice = ejuices(:one)
  end

  test "should get index" do
    get ejuices_url
    assert_response :success
  end

  test "should get new" do
    get new_ejuice_url
    assert_response :success
  end

  test "should create ejuice" do
    assert_difference('Ejuice.count') do
      post ejuices_url, params: { ejuice: { desc: @ejuice.desc, flavor: @ejuice.flavor, fp: @ejuice.fp, name: @ejuice.name, rating: @ejuice.rating } }
    end

    assert_redirected_to ejuice_url(Ejuice.last)
  end

  test "should show ejuice" do
    get ejuice_url(@ejuice)
    assert_response :success
  end

  test "should get edit" do
    get edit_ejuice_url(@ejuice)
    assert_response :success
  end

  test "should update ejuice" do
    patch ejuice_url(@ejuice), params: { ejuice: { desc: @ejuice.desc, flavor: @ejuice.flavor, fp: @ejuice.fp, name: @ejuice.name, rating: @ejuice.rating } }
    assert_redirected_to ejuice_url(@ejuice)
  end

  test "should destroy ejuice" do
    assert_difference('Ejuice.count', -1) do
      delete ejuice_url(@ejuice)
    end

    assert_redirected_to ejuices_url
  end
end
