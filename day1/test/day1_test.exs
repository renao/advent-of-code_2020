defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "solves the puzzle for two number" do
    assert Day1.find_answer_for_two_numbers == 381699
  end

  test "solves the puzzle for three numbers" do
    assert Day1.find_answer_for_three_numbers == 111605670
  end
end
