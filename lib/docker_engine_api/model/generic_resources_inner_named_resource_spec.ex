# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.GenericResourcesInnerNamedResourceSpec do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Kind,
    :Value
  ]

  @type t :: %__MODULE__{
    :Kind => String.t | nil,
    :Value => String.t | nil
  }

  def decode(value) do
    value
  end
end
