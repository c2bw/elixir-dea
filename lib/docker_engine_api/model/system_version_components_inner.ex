# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SystemVersionComponentsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Version,
    :Details
  ]

  @type t :: %__MODULE__{
    :Name => String.t,
    :Version => String.t,
    :Details => map() | nil
  }

  def decode(value) do
    value
  end
end
