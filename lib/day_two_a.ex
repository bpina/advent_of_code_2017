defmodule DayTwoA do
  def execute(input) do
    input 
    |> String.split("\n") 
    |> Enum.filter(&String.first/1) 
    |> Enum.map(fn (x) -> String.split(x, " ") end)
    |> Enum.map(&integers_in_row/1)
    |> Enum.map(&row_difference/1)
    |> Enum.sum
  end

  def integers_in_row(row) do
    row
    |> Enum.filter(&String.first/1)
    |> Enum.map(&String.to_integer/1)
  end

  def row_difference(row) do
    row_difference(row, 0, 0)
  end

  def row_difference([], max, min), do: max - min

  def row_difference(row, max, min) do
    [head | tail] = row

    new_min = cond do
      max == 0 -> head
      head < min -> head
      true -> min
    end

    new_max = cond do
      head > max -> head
      true -> max
    end

    row_difference(tail, new_max, new_min)
  end
end
