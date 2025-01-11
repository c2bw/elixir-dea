# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.VolumeUpdateRequest do
  @moduledoc """
  Volume configuration
  """

  @derive JSON.Encoder
  defstruct [
    :Spec
  ]

  @type t :: %__MODULE__{
    :Spec => DockerEngineAPI.Model.ClusterVolumeSpec.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.ClusterVolumeSpec)
  end
end
