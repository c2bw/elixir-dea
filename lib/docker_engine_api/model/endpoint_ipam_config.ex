# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.EndpointIpamConfig do
  @moduledoc """
  EndpointIPAMConfig represents an endpoint's IPAM configuration. 
  """

  @derive Jason.Encoder
  defstruct [
    :IPv4Address,
    :IPv6Address,
    :LinkLocalIPs
  ]

  @type t :: %__MODULE__{
    :IPv4Address => String.t | nil,
    :IPv6Address => String.t | nil,
    :LinkLocalIPs => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

