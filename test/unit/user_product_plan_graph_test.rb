require 'test_helper'

class UserProductPlanGraphTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_user_product_plan_id" do
    user_product_plan_graph = UserProductPlanGraph.new(:user_product_plan_id => nil)
    assert user_product_plan_graph.invalid?, "User Product Plan ID cannot be blank"
  end
  
  test "alphabatic_user_product_plan_id" do
    user_product_plan_graph = UserProductPlanGraph.new(:user_product_plan_id => 'abc')
    assert user_product_plan_graph.invalid?, "User Product Plan ID cannot be Alphabatic"
  end
  
  test "blank_graph_id" do
    user_product_plan_graph = UserProductPlanGraph.new(:graph_id => nil)
    assert user_product_plan_graph.invalid?, "Graph_id cannot be blank"
  end
  
  
  
  test "alphabatic_graph_id" do
    user_product_plan_graph = UserProductPlanGraph.new(:graph_id => 'abc')
    assert user_product_plan_graph.invalid?, "Graph_id cannot be Alphabatic"
  end
  
  test "blank_graph_type" do
    user_product_plan_graph = UserProductPlanGraph.new(:graph_select_type => nil)
    assert user_product_plan_graph.invalid?, "Graph type cannot be blank"
  end
  
  test "blank_graph_range" do
    user_product_plan_graph = UserProductPlanGraph.new(:graph_select_range => nil)
    assert user_product_plan_graph.invalid?, "Graph range cannot be blank"
  end
  
  
  
  test "alphabatic_friend_product_plan_id" do
    user_product_plan_graph = UserProductPlanGraph.new(:friend_product_plan_id => 'abc')
    assert user_product_plan_graph.invalid?, "Friend Product Plan ID cannot be Alphabatic"
  end
  
end
