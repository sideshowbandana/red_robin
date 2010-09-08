require File.dirname(__FILE__) + '/../test_helper' unless $TEST_HELPER

class RedRobinTest < ActiveSupport::TestCase
  ITEMS = (1..5).to_a
  class TestObject
    include RedRobin
    red_robins_on :item, ITEMS
  end
  test "A class that red robins on multiple items" do
    @object = TestObject.new
    assert false
    assert_not_nil @object.next_item, "should be able to access the next item"
    assert ITEMS.include?(@object.next_item), "should have items that are within the defined list"
    assert_not_equal @object.next_item, @object.next_item, "should not have the same value"
    (ITEMS.count + 1).times do
      assert ITEMS.include?(@object.next_item), "should be able to iterate past the end of the list and start from the beginning"
    end
      
  end
end
