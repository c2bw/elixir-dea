# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginSettings do
  @moduledoc """
  Settings that can be modified by users.
  """

  @derive Jason.Encoder
  defstruct [
    :Mounts,
    :Env,
    :Args,
    :Devices
  ]

  @type t :: %__MODULE__{
    :Mounts => [DockerEngineAPI.Model.PluginMount.t],
    :Env => [String.t],
    :Args => [String.t],
    :Devices => [DockerEngineAPI.Model.PluginDevice.t]
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Mounts, :list, DockerEngineAPI.Model.PluginMount)
     |> Deserializer.deserialize(:Devices, :list, DockerEngineAPI.Model.PluginDevice)
  end
end

