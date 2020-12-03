defmodule Day2Test do
  use ExUnit.Case
  doctest Day2

  test "finds amount of valid password" do
    assert Day2.valid_passwords_count > 0
  end
end
