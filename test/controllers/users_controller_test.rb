require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "TEST", email: "test@test.com", username: "TEST2011", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end

  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "first_name", "last_name", "email", "username", "password_digest", "admin", "prof_image", "about_me", "created_at", "updated_at"], data.keys
  end

  # test "the truth" do
  #   assert true
  # end
end
