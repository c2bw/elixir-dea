# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.VolumeCreateOptions do
  @moduledoc """
  Volume configuration
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Driver,
    :DriverOpts,
    :Labels,
    :ClusterVolumeSpec
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Driver => String.t | nil,
    :DriverOpts => %{optional(String.t) => String.t} | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :ClusterVolumeSpec => DockerEngineAPI.Model.ClusterVolumeSpec.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ClusterVolumeSpec, :struct, DockerEngineAPI.Model.ClusterVolumeSpec)
  end
end
