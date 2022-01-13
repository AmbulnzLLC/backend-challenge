require "test_helper"

class PizzaTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza_type = pizza_types(:one)
  end

  test "should get index" do
    get pizza_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_type_url
    assert_response :success
  end

  test "should create pizza_type" do
    assert_difference('PizzaType.count') do
      post pizza_types_url, params: { pizza_type: { name: @pizza_type.name, price: @pizza_type.price } }
    end

    assert_redirected_to pizza_type_url(PizzaType.last)
  end

  test "should show pizza_type" do
    get pizza_type_url(@pizza_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_type_url(@pizza_type)
    assert_response :success
  end

  test "should update pizza_type" do
    patch pizza_type_url(@pizza_type), params: { pizza_type: { name: @pizza_type.name, price: @pizza_type.price } }
    assert_redirected_to pizza_type_url(@pizza_type)
  end

  test "should destroy pizza_type" do
    assert_difference('PizzaType.count', -1) do
      delete pizza_type_url(@pizza_type)
    end

    assert_redirected_to pizza_types_url
  end
end
