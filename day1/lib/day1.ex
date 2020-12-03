defmodule Day1 do
  @moduledoc """
  Documentation for `Day1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Day1.hello()
      :world

  """
  def hello do
    find_answer()
    :world
  end

  def find_answer do
    entries = load_entries()
    load_entries
    |> combines_to(2020)
    # |> multiply_pair
  end

  def load_entries do
    File.stream!("seed/entries")
    |> Enum.to_list
    |> Enum.map(&parse_number/1);
  end

  def combines_to(entries, combined_value) do
    # TODO
    # Low Bob idea:
    # Sum every entry combination and check for combined_value equality
    # if a combination is found stop and return values.

    Enum.filter(entries, fn x -> Enum.filter(entries, fn y -> x + y == combined_value end) end)
  end

  def parse_number(entry) do
    entry
    |> String.trim
    |> String.to_integer
  end
end
