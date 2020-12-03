defmodule Day1 do

  def find_answer_for_two_numbers do
    load_entries()
    |> find_solution
  end

  def find_answer_for_three_numbers do
  end

  def load_entries do
    File.stream!("seed/entries")
    |> Enum.to_list
    |> Enum.map(&parse_number/1)
  end

  def find_solution(entries) do
    x = Enum.find(entries, fn x -> Enum.find(entries, fn y -> is_solution?(x, y) end) end)
    y = 2020 - x
    x * y
  end

  def is_solution?(x, y) do
    (x + y == 2020)
  end

  def parse_number(entry) do
    entry
    |> String.trim
    |> String.to_integer
  end
end
