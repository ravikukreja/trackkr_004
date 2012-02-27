require 'test_helper'

class GraphTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "blank_caterory_id" do
    graph = Graph.new(
    :t_category_id => nil)
    assert graph.invalid?,"Category id cannot be blank"
  end
  
  test "blank_graph_name" do
    graph = Graph.new(
    :name => nil)
    assert graph.invalid?,"Graph name cannot be blank"
  end
  
  test "blank_graph_desc" do
    graph = Graph.new(
    :description => nil)
    assert graph.invalid?,"Graph description cannot be blank"
  end
  
end
