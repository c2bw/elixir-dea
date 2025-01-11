# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.OciDescriptor do
  @moduledoc """
  A descriptor struct containing digest, media type, and size, as defined in the [OCI Content Descriptors Specification](https://github.com/opencontainers/image-spec/blob/v1.0.1/descriptor.md).
  """

  @derive JSON.Encoder
  defstruct [
    :mediaType,
    :digest,
    :size
  ]

  @type t :: %__MODULE__{
    :mediaType => String.t | nil,
    :digest => String.t | nil,
    :size => integer() | nil
  }

  def decode(value) do
    value
  end
end
