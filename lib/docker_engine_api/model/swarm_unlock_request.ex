# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmUnlockRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :UnlockKey
  ]

  @type t :: %__MODULE__{
    :UnlockKey => String.t | nil
  }

  def decode(value) do
    value
  end
end
