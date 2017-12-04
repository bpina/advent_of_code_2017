defmodule DayOneATest do
  use ExUnit.Case
  doctest DayOneA

  test "example one" do
    input = "1122"
    expected = 3

    assert DayOneA.execute(input) == expected
  end

  test "example two" do
    input = "1111"
    expected = 4

    assert DayOneA.execute(input) == expected
  end

  test "example three" do
    input = "1234"
    expected = 0

    assert DayOneA.execute(input) == expected
  end

  test "example four" do
    input = "91212129"
    expected = 9

    assert DayOneA.execute(input) == expected
  end
end
