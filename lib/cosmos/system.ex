defmodule Cosmos.System do
  @moduledoc "A system in space"

  alias Cosmos.Planet

  defstruct id: nil,
  name: nil,
  planets: []

  @type t :: %__MODULE__{id: nil | integer,
   name: nil | String.t,
   planets: [Planet.t]}

  def total_mass(system) do
    Enum.reduce(system, 0, fn(p, total) ->
      total + p.mass
    end)
  end

  defimpl Enumerable do
    def count(system) do
      {:ok, length(system.planets)}
    end

    def member?(system, planet) do
      Enumerable.member?(system.planets, planet)
    end

    def reduce(system, acc, fun) do
      Enumerable.reduce(system.planets, acc, fun)
    end
  end
end
