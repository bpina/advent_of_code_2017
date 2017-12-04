defmodule DayTwoATest do
  use ExUnit.Case
  doctest DayTwoA

  test "exmaple one" do
    # 5 1 9 5
    # 7 5 3
    # 2 4 6 8
    input = """
    5 1 9 5
    7 5 3
    2 4 6 8
    """

    expected = 18

    assert DayTwoA.execute(input) == expected
  end
end
