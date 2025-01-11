# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.EndpointSettings do
  @moduledoc """
  Configuration for a network endpoint.
  """

  @derive JSON.Encoder
  defstruct [
    :IPAMConfig,
    :Links,
    :MacAddress,
    :Aliases,
    :NetworkID,
    :EndpointID,
    :Gateway,
    :IPAddress,
    :IPPrefixLen,
    :IPv6Gateway,
    :GlobalIPv6Address,
    :GlobalIPv6PrefixLen,
    :DriverOpts,
    :DNSNames
  ]

  @type t :: %__MODULE__{
    :IPAMConfig => DockerEngineAPI.Model.EndpointIpamConfig.t | nil,
    :Links => [String.t] | nil,
    :MacAddress => String.t | nil,
    :Aliases => [String.t] | nil,
    :NetworkID => String.t | nil,
    :EndpointID => String.t | nil,
    :Gateway => String.t | nil,
    :IPAddress => String.t | nil,
    :IPPrefixLen => integer() | nil,
    :IPv6Gateway => String.t | nil,
    :GlobalIPv6Address => String.t | nil,
    :GlobalIPv6PrefixLen => integer() | nil,
    :DriverOpts => %{optional(String.t) => String.t} | nil,
    :DNSNames => [String.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:IPAMConfig, :struct, DockerEngineAPI.Model.EndpointIpamConfig)
  end
end
