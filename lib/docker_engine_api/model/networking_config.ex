# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.NetworkingConfig do
  @moduledoc """
  NetworkingConfig represents the container's networking configuration for each of its interfaces. It is used for the networking configs specified in the `docker create` and `docker network connect` commands.
  """

  @derive JSON.Encoder
  defstruct [
    :EndpointsConfig
  ]

  @type t :: %__MODULE__{
    :EndpointsConfig => %{optional(String.t) => DockerEngineAPI.Model.EndpointSettings.t} | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:EndpointsConfig, :map, DockerEngineAPI.Model.EndpointSettings)
  end
end
