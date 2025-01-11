# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.HostConfigAllOfLogConfig do
  @moduledoc """
  The logging configuration for this container
  """

  @derive JSON.Encoder
  defstruct [
    :Type,
    :Config
  ]

  @type t :: %__MODULE__{
    :Type => String.t | nil,
    :Config => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end
