# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ImageDeleteResponseItem do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Untagged,
    :Deleted
  ]

  @type t :: %__MODULE__{
    :Untagged => String.t | nil,
    :Deleted => String.t | nil
  }

  def decode(value) do
    value
  end
end
