# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.BuildPruneResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :CachesDeleted,
    :SpaceReclaimed
  ]

  @type t :: %__MODULE__{
    :CachesDeleted => [String.t] | nil,
    :SpaceReclaimed => integer() | nil
  }

  def decode(value) do
    value
  end
end

