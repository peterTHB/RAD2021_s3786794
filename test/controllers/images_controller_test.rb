require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get images_url
    assert_response :success
  end

  test "should get new" do
    get new_image_url
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post images_url, params: { image: { arrival: @image.arrival, caption: @image.caption, human_type: @image.human_type, popular: @image.popular, price: @image.price, saved_to_list: @image.saved_to_list, title: @image.title, url_name: @image.url_name } }
    end

    assert_redirected_to image_url(Image.last)
  end

  test "should show image" do
    get image_url(@image)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_url(@image)
    assert_response :success
  end

  test "should update image" do
    patch image_url(@image), params: { image: { arrival: @image.arrival, caption: @image.caption, human_type: @image.human_type, popular: @image.popular, price: @image.price, saved_to_list: @image.saved_to_list, title: @image.title, url_name: @image.url_name } }
    assert_redirected_to image_url(@image)
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete image_url(@image)
    end

    assert_redirected_to images_url
  end
end
