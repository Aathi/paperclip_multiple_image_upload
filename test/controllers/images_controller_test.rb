require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post :create, image: { description: @image.description, gallery_token: @image.gallery_token, image: @image.image, image_content_type: @image.image_content_type, image_file_name: @image.image_file_name, image_file_size: @image.image_file_size, image_updated_at: @image.image_updated_at, post_id: @image.post_id }
    end

    assert_redirected_to image_path(assigns(:image))
  end

  test "should show image" do
    get :show, id: @image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image
    assert_response :success
  end

  test "should update image" do
    patch :update, id: @image, image: { description: @image.description, gallery_token: @image.gallery_token, image: @image.image, image_content_type: @image.image_content_type, image_file_name: @image.image_file_name, image_file_size: @image.image_file_size, image_updated_at: @image.image_updated_at, post_id: @image.post_id }
    assert_redirected_to image_path(assigns(:image))
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete :destroy, id: @image
    end

    assert_redirected_to images_path
  end
end
