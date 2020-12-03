defmodule Day1 do

  def find_answer_for_two_numbers do
    load_entries()
    |> solve_for_two_numbers
  end

  def find_answer_for_three_numbers do
    load_entries()
    |> solve_for_three_numbers
  end

  defp solve_for_two_numbers(entries, combination_value \\ 2020) do
    Enum.find_value(entries, fn x ->
      partner = Enum.find(entries, fn y -> x + y == combination_value end)
      if partner != nil do
        x * partner
      end
    end)
  end

  defp solve_for_three_numbers(entries) do
    Enum.find_value(entries, fn x ->
      partner = solve_for_two_numbers(entries, 2020 - x)
      if partner != nil do
        x * partner
      end
    end)
  end

  defp load_entries do
    File.stream!("seed/entries")
    |> Enum.to_list
    |> Enum.map(&parse_number/1)
  end

  defp parse_number(entry) do
    entry
    |> String.trim
    |> String.to_integer
  end
end
