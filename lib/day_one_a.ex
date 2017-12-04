defmodule DayOneA do
  def execute(input) do
    input 
    |> String.graphemes 
    |> Enum.map(&String.to_integer/1) 
    |> sum
  end

  def sum([number]), do: number

  def sum([head | tail]) do
    cond do
      [head] == Enum.take(tail, -1) -> sum([head | tail], head)

      true -> sum([head | tail], 0)
    end
  end

  def sum([], total), do: total
  
  def sum([last], total) do
    total
  end

  def sum([a, b | tail], total) when a == b do
    sum([b | tail], (total + b))
  end

  def sum(nums, total) do
    [_ | tail] = nums

    sum(tail, total)
  end
end
