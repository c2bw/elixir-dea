# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpecAccessMode do
  @moduledoc """
  Defines how the volume is used by tasks.
  """

  @derive JSON.Encoder
  defstruct [
    :Scope,
    :Sharing,
    :MountVolume,
    :Secrets,
    :AccessibilityRequirements,
    :CapacityRange,
    :Availability
  ]

  @type t :: %__MODULE__{
    :Scope => String.t | nil,
    :Sharing => String.t | nil,
    :MountVolume => map() | nil,
    :Secrets => [DockerEngineAPI.Model.ClusterVolumeSpecAccessModeSecretsInner.t] | nil,
    :AccessibilityRequirements => DockerEngineAPI.Model.ClusterVolumeSpecAccessModeAccessibilityRequirements.t | nil,
    :CapacityRange => DockerEngineAPI.Model.ClusterVolumeSpecAccessModeCapacityRange.t | nil,
    :Availability => String.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Secrets, :list, DockerEngineAPI.Model.ClusterVolumeSpecAccessModeSecretsInner)
     |> Deserializer.deserialize(:AccessibilityRequirements, :struct, DockerEngineAPI.Model.ClusterVolumeSpecAccessModeAccessibilityRequirements)
     |> Deserializer.deserialize(:CapacityRange, :struct, DockerEngineAPI.Model.ClusterVolumeSpecAccessModeCapacityRange)
  end
end
