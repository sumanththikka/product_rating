require 'test_helper'

class ProductUserRatingsControllerTest < ActionController::TestCase
  setup do
    @product_user_rating = product_user_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_user_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_user_rating" do
    assert_difference('ProductUserRating.count') do
      post :create, product_user_rating: {  }
    end

    assert_redirected_to product_user_rating_path(assigns(:product_user_rating))
  end

  test "should show product_user_rating" do
    get :show, id: @product_user_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_user_rating
    assert_response :success
  end

  test "should update product_user_rating" do
    patch :update, id: @product_user_rating, product_user_rating: {  }
    assert_redirected_to product_user_rating_path(assigns(:product_user_rating))
  end

  test "should destroy product_user_rating" do
    assert_difference('ProductUserRating.count', -1) do
      delete :destroy, id: @product_user_rating
    end

    assert_redirected_to product_user_ratings_path
  end
end
