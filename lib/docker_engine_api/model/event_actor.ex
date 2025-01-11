# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.EventActor do
  @moduledoc """
  Actor describes something that generates events, like a container, network, or a volume.
  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Attributes
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Attributes => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end
