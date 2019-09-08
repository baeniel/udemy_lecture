require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ingredients_index_url
    assert_response :success
  end

  test "should get xhow" do
    get ingredients_xhow_url
    assert_response :success
  end

end
