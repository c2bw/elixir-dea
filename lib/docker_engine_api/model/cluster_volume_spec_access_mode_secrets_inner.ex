# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpecAccessModeSecretsInner do
  @moduledoc """
  One cluster volume secret entry. Defines a key-value pair that is passed to the plugin. 
  """

  @derive Jason.Encoder
  defstruct [
    :Key,
    :Secret
  ]

  @type t :: %__MODULE__{
    :Key => String.t | nil,
    :Secret => String.t | nil
  }

  def decode(value) do
    value
  end
end

