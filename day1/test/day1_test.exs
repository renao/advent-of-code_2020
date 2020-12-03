defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "solves the puzzle" do
    # Find the to numbers, that sum up to 2020 and multiply them.
    surely_not_expected = 0
    assert Day1.find_answer == surely_not_expected
  end
end
