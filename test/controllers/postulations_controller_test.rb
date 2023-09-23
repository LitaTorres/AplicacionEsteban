require "test_helper"

class PostulationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @postulation = postulations(:one)
  end

  test "should get index" do
    get postulations_url
    assert_response :success
    assert_equal 200, response.status
    assert_equal "text/html", responde.media_type
    assert_equal "utf-8", response.chatset
    assert_equal Postulation.count, 2
  end

  test "should get new" do
    get new_postulation_url
    assert_response :success
  end

  test "should create postulation" do
    assert_difference("Postulation.count") do
      post postulations_url, params: { postulation: { publication_id: @postulation.publication_id } }
    end

    assert_redirected_to postulation_url(Postulation.last)
  end

  test "should show postulation" do
    get postulation_url(@postulation)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulation_url(@postulation)
    assert_response :success
  end

  test "should update postulation" do
    patch postulation_url(@postulation), params: { postulation: { publication_id: @postulation.publication_id } }
    assert_redirected_to postulation_url(@postulation)
  end

  test "should destroy postulation" do
    assert_difference("Postulation.count", -1) do
      delete postulation_url(@postulation)
    end

    assert_redirected_to postulations_url
  end
end
