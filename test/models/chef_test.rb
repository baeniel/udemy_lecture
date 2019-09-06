require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.new(chefname: "baeniel", email: "jinveloper126@gmail.com")
  end

  test "chef should be valid" do
    assert @chef.valid?
  end

  test "chef should have a name" do
    @chef.chefname = ""
    assert_not @chef.valid?
  end

  test "chef's email should be at mimum 5" do
    @chef.email = "aaaa"
    assert_not @chef.valid?
  end
end
