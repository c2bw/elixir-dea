# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmJoinRequest do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :ListenAddr,
    :AdvertiseAddr,
    :DataPathAddr,
    :RemoteAddrs,
    :JoinToken
  ]

  @type t :: %__MODULE__{
    :ListenAddr => String.t | nil,
    :AdvertiseAddr => String.t | nil,
    :DataPathAddr => String.t | nil,
    :RemoteAddrs => [String.t] | nil,
    :JoinToken => String.t | nil
  }

  def decode(value) do
    value
  end
end
