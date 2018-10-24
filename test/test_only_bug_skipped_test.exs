defmodule TestOnlyBugSkippedTest do
  use ExUnit.Case
  doctest TestOnlyBug

  @tag :one
  test "one" do
    assert 1 == 1
  end

  @tag :skip
  @tag :two
  test "two" do
    assert 2 == 2
  end
end
