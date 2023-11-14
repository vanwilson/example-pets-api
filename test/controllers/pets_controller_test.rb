require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/pets.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Pet.count, data.length
  end

  test "create" do
    assert_difference "Pet.count", 1 do
      post "/pets.json", params: { name: "lake", age: 2, breed: "golden retriever" }
      assert_response 200
    end
  end

  test "show" do
    get "/pets/#{Pet.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "age", "breed", "created_at", "updated_at"], data.keys
  end

  test "update" do
    pet = Pet.first
    patch "/pets/#{pet.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
end
