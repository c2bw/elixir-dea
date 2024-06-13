# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginEnv do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Description,
    :Settable,
    :Value
  ]

  @type t :: %__MODULE__{
    :Name => String.t,
    :Description => String.t,
    :Settable => [String.t],
    :Value => String.t
  }

  def decode(value) do
    value
  end
end

