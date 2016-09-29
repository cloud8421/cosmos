defmodule Cosmos.SystemTest do
  use ExUnit.Case
  doctest Cosmos.System

  alias Cosmos.{Planet, System}

  test "system total mass" do
    earth = %Planet{id: 1, name: "Earth", mass: 5.97}
    venus = %Planet{id: 2, name: "Venus", mass: 4.86}

    solar = %System{id: 1,
                    name: "Solar",
                    planets: [earth, venus]}
    assert System.total_mass(solar) == 10.83
  end
end
