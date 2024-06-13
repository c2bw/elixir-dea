# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerSummary do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Id,
    :Names,
    :Image,
    :ImageID,
    :Command,
    :Created,
    :Ports,
    :SizeRw,
    :SizeRootFs,
    :Labels,
    :State,
    :Status,
    :HostConfig,
    :NetworkSettings,
    :Mounts
  ]

  @type t :: %__MODULE__{
    :Id => String.t | nil,
    :Names => [String.t] | nil,
    :Image => String.t | nil,
    :ImageID => String.t | nil,
    :Command => String.t | nil,
    :Created => integer() | nil,
    :Ports => [DockerEngineAPI.Model.Port.t] | nil,
    :SizeRw => integer() | nil,
    :SizeRootFs => integer() | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :State => String.t | nil,
    :Status => String.t | nil,
    :HostConfig => DockerEngineAPI.Model.ContainerSummaryHostConfig.t | nil,
    :NetworkSettings => DockerEngineAPI.Model.ContainerSummaryNetworkSettings.t | nil,
    :Mounts => [DockerEngineAPI.Model.MountPoint.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Ports, :list, DockerEngineAPI.Model.Port)
     |> Deserializer.deserialize(:HostConfig, :struct, DockerEngineAPI.Model.ContainerSummaryHostConfig)
     |> Deserializer.deserialize(:NetworkSettings, :struct, DockerEngineAPI.Model.ContainerSummaryNetworkSettings)
     |> Deserializer.deserialize(:Mounts, :list, DockerEngineAPI.Model.MountPoint)
  end
end

