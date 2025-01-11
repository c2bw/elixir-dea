# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmSpecCaConfigExternalCasInner do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Protocol,
    :URL,
    :Options,
    :CACert
  ]

  @type t :: %__MODULE__{
    :Protocol => String.t | nil,
    :URL => String.t | nil,
    :Options => %{optional(String.t) => String.t} | nil,
    :CACert => String.t | nil
  }

  def decode(value) do
    value
  end
end
