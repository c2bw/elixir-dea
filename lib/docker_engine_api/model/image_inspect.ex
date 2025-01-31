# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ImageInspect do
  @moduledoc """
  Information about an image in the local image cache.
  """

  @derive JSON.Encoder
  defstruct [
    :Id,
    :RepoTags,
    :RepoDigests,
    :Parent,
    :Comment,
    :Created,
    :Container,
    :ContainerConfig,
    :DockerVersion,
    :Author,
    :Config,
    :Architecture,
    :Variant,
    :Os,
    :OsVersion,
    :Size,
    :VirtualSize,
    :GraphDriver,
    :RootFS,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :Id => String.t | nil,
    :RepoTags => [String.t] | nil,
    :RepoDigests => [String.t] | nil,
    :Parent => String.t | nil,
    :Comment => String.t | nil,
    :Created => String.t | nil,
    :Container => String.t | nil,
    :ContainerConfig => DockerEngineAPI.Model.ContainerConfig.t | nil,
    :DockerVersion => String.t | nil,
    :Author => String.t | nil,
    :Config => DockerEngineAPI.Model.ContainerConfig.t | nil,
    :Architecture => String.t | nil,
    :Variant => String.t | nil,
    :Os => String.t | nil,
    :OsVersion => String.t | nil,
    :Size => integer() | nil,
    :VirtualSize => integer() | nil,
    :GraphDriver => DockerEngineAPI.Model.GraphDriverData.t | nil,
    :RootFS => DockerEngineAPI.Model.ImageInspectRootFs.t | nil,
    :Metadata => DockerEngineAPI.Model.ImageInspectMetadata.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ContainerConfig, :struct, DockerEngineAPI.Model.ContainerConfig)
     |> Deserializer.deserialize(:Config, :struct, DockerEngineAPI.Model.ContainerConfig)
     |> Deserializer.deserialize(:GraphDriver, :struct, DockerEngineAPI.Model.GraphDriverData)
     |> Deserializer.deserialize(:RootFS, :struct, DockerEngineAPI.Model.ImageInspectRootFs)
     |> Deserializer.deserialize(:Metadata, :struct, DockerEngineAPI.Model.ImageInspectMetadata)
  end
end
