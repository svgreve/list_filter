defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "returns number of odd integers list elements" do
      list =  [1, 5, 7, 43, "banana", "6", "abc", :atom]
      response = ListFilter.call(list)
      expected_response = 4
      assert response == expected_response
    end
  end
end
