require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @chef = Chef.create!(chefname: "Cathy", email: "cat@email.com")
    @recipe = Recipe.create(name: "vegetable sautee", description: "great vegtable sautee, add veggies and oils", chef: @chef)
    @recipe = @chef.recipes.build(name: "grilled salmon", description: "awesome seasoning")
    @recipe2.save
  end

  test "should get recipes index" do
    get recipes_path
    assert_response :success
  end

  test "should get recipes listing" do
      get recipes_path
      assert_template 'recipes/index'
      assert_match @recipe.name, response.body
      assert_match @recipe2.name, response.body
  end

end
