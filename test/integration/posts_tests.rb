require "test_helper"

class PostsTest < ActionDispatch::IntegrationTest
  test "can create a new post" do
    get "/posts/new"
    assert_response :success

    post "/posts", params: {
      author: "Jane Doe",
      body: "Hello, world!",
      image: "https://example.com/image.png"
    }
    assert_redirected_to "/posts"
    follow_redirect!
    assert_response :success
    assert_match "Jane Doe", response.body
    assert_match "Hello, world!", response.body
  end
end
