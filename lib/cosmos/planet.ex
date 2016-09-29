defmodule Cosmos.Planet do
  @moduledoc "A planet in a system"

  defstruct id: nil,
  name: nil,
  mass: 0.0

  @type t :: %__MODULE__{id: nil | integer,
   name: nil | String.t,
   mass: float}
end
