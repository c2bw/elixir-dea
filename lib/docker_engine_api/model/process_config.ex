# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ProcessConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :privileged,
    :user,
    :tty,
    :entrypoint,
    :arguments
  ]

  @type t :: %__MODULE__{
    :privileged => boolean() | nil,
    :user => String.t | nil,
    :tty => boolean() | nil,
    :entrypoint => String.t | nil,
    :arguments => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

