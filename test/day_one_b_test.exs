defmodule DayOneBTest do
  use ExUnit.Case
  doctest DayOneB

  test "example one" do
    input = "1212"
    expected = 6

    assert DayOneB.execute(input) == expected
  end

  test "example two" do
    input = "1221"
    expected = 0

    assert DayOneB.execute(input) == expected
  end

  test "example three" do
    input = "123425"
    expected = 4

    assert DayOneB.execute(input) == expected
  end

  test "example four" do
    input = "123123"
    expected = 12

    assert DayOneB.execute(input) == expected
  end

  test "example five" do
    input = "12131415"
    expected = 4

    assert DayOneB.execute(input) == expected
  end
end
