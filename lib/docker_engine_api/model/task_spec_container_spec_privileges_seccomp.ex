# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecPrivilegesSeccomp do
  @moduledoc """
  Options for configuring seccomp on the container
  """

  @derive Jason.Encoder
  defstruct [
    :Mode,
    :Profile
  ]

  @type t :: %__MODULE__{
    :Mode => String.t | nil,
    :Profile => String.t | nil
  }

  def decode(value) do
    value
  end
end
