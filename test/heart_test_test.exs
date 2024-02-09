defmodule HeartTestTest do
  use ExUnit.Case
  doctest HeartTest

  test "greets the world" do
    assert HeartTest.hello() == :world
  end
end
