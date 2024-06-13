# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginConfigLinux do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Capabilities,
    :AllowAllDevices,
    :Devices
  ]

  @type t :: %__MODULE__{
    :Capabilities => [String.t],
    :AllowAllDevices => boolean(),
    :Devices => [DockerEngineAPI.Model.PluginDevice.t]
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Devices, :list, DockerEngineAPI.Model.PluginDevice)
  end
end
