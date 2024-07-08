require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { first_name: "Test", last_name: "TEST", email: "test@test.com", username: "TEST2011", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end

  # test "the truth" do
  #   assert true
  # end
end
