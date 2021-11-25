require "test_helper"

class PhotoGalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_gallery = photo_galleries(:one)
  end

  test "should get index" do
    get photo_galleries_url, as: :json
    assert_response :success
  end

  test "should create photo_gallery" do
    assert_difference('PhotoGallery.count') do
      post photo_galleries_url, params: { photo_gallery: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show photo_gallery" do
    get photo_gallery_url(@photo_gallery), as: :json
    assert_response :success
  end

  test "should update photo_gallery" do
    patch photo_gallery_url(@photo_gallery), params: { photo_gallery: {  } }, as: :json
    assert_response 200
  end

  test "should destroy photo_gallery" do
    assert_difference('PhotoGallery.count', -1) do
      delete photo_gallery_url(@photo_gallery), as: :json
    end

    assert_response 204
  end
end
