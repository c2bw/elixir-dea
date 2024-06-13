# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.MountBindOptions do
  @moduledoc """
  Optional configuration for the `bind` type.
  """

  @derive Jason.Encoder
  defstruct [
    :Propagation,
    :NonRecursive,
    :CreateMountpoint,
    :ReadOnlyNonRecursive,
    :ReadOnlyForceRecursive
  ]

  @type t :: %__MODULE__{
    :Propagation => String.t | nil,
    :NonRecursive => boolean() | nil,
    :CreateMountpoint => boolean() | nil,
    :ReadOnlyNonRecursive => boolean() | nil,
    :ReadOnlyForceRecursive => boolean() | nil
  }

  def decode(value) do
    value
  end
end
