# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SystemAuthResponse do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Status,
    :IdentityToken
  ]

  @type t :: %__MODULE__{
    :Status => String.t,
    :IdentityToken => String.t | nil
  }

  def decode(value) do
    value
  end
end
