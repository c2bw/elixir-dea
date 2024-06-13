# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.NetworkSettings do
  @moduledoc """
  NetworkSettings exposes the network settings in the API
  """

  @derive Jason.Encoder
  defstruct [
    :Bridge,
    :SandboxID,
    :HairpinMode,
    :LinkLocalIPv6Address,
    :LinkLocalIPv6PrefixLen,
    :Ports,
    :SandboxKey,
    :SecondaryIPAddresses,
    :SecondaryIPv6Addresses,
    :EndpointID,
    :Gateway,
    :GlobalIPv6Address,
    :GlobalIPv6PrefixLen,
    :IPAddress,
    :IPPrefixLen,
    :IPv6Gateway,
    :MacAddress,
    :Networks
  ]

  @type t :: %__MODULE__{
    :Bridge => String.t | nil,
    :SandboxID => String.t | nil,
    :HairpinMode => boolean() | nil,
    :LinkLocalIPv6Address => String.t | nil,
    :LinkLocalIPv6PrefixLen => integer() | nil,
    :Ports => %{optional(String.t) => [DockerEngineAPI.Model.PortBinding.t]} | nil,
    :SandboxKey => String.t | nil,
    :SecondaryIPAddresses => [DockerEngineAPI.Model.Address.t] | nil,
    :SecondaryIPv6Addresses => [DockerEngineAPI.Model.Address.t] | nil,
    :EndpointID => String.t | nil,
    :Gateway => String.t | nil,
    :GlobalIPv6Address => String.t | nil,
    :GlobalIPv6PrefixLen => integer() | nil,
    :IPAddress => String.t | nil,
    :IPPrefixLen => integer() | nil,
    :IPv6Gateway => String.t | nil,
    :MacAddress => String.t | nil,
    :Networks => %{optional(String.t) => DockerEngineAPI.Model.EndpointSettings.t} | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:SecondaryIPAddresses, :list, DockerEngineAPI.Model.Address)
     |> Deserializer.deserialize(:SecondaryIPv6Addresses, :list, DockerEngineAPI.Model.Address)
     |> Deserializer.deserialize(:Networks, :map, DockerEngineAPI.Model.EndpointSettings)
  end
end
