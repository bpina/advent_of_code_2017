defmodule DayOneB do
  def execute(input) do
    input 
    |> String.graphemes 
    |> Enum.map(&String.to_integer/1) 
    |> sum
  end

  def sum(input) do
    size = length(input)

    IO.write("\nsumming #{inspect input}\n")

    sum(input, (size - 1), 0, round(size / 2), 0)
  end

  def sum(_, max, position, _, total) when position > max, do: total

  def sum(input, max, position, offset, total) do
    position_b = position + offset

    position_b = cond do
      position_b > max -> (position_b - max) - 1
      true -> position_b
    end

    a = input |> at(position)
    b = input |> at(position_b)

    IO.write("found #{inspect a} at #{inspect position}\n")
    IO.write("found #{inspect b} at #{inspect position_b} (offset) #{inspect offset}\n")

    new_total = case a do
      ^b -> total + a
      _ -> total
    end

    sum(input, max, (position + 1), offset, new_total)
  end

  def at(input, position) do
    case Enum.at(input, position) do
      nil -> 0
      val -> val
    end
  end
end
