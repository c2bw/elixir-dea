# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecPlacementPreferencesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Spread
  ]

  @type t :: %__MODULE__{
    :Spread => DockerEngineAPI.Model.TaskSpecPlacementPreferencesInnerSpread.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Spread, :struct, DockerEngineAPI.Model.TaskSpecPlacementPreferencesInnerSpread)
  end
end
