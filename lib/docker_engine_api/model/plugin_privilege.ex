# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginPrivilege do
  @moduledoc """
  Describes a permission the user has to accept upon installing the plugin. 
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Description,
    :Value
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Description => String.t | nil,
    :Value => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
