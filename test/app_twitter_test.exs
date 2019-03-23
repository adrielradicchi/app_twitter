defmodule AppTwitterTest do
  use ExUnit.Case
  doctest AppTwitter

  test "greets the world" do
    assert AppTwitter.hello() == :world
  end
end
