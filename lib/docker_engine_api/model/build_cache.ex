# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.BuildCache do
  @moduledoc """
  BuildCache contains information about a build cache record. 
  """

  @derive Jason.Encoder
  defstruct [
    :ID,
    :Parent,
    :Parents,
    :Type,
    :Description,
    :InUse,
    :Shared,
    :Size,
    :CreatedAt,
    :LastUsedAt,
    :UsageCount
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Parent => String.t | nil,
    :Parents => [String.t] | nil,
    :Type => String.t | nil,
    :Description => String.t | nil,
    :InUse => boolean() | nil,
    :Shared => boolean() | nil,
    :Size => integer() | nil,
    :CreatedAt => String.t | nil,
    :LastUsedAt => String.t | nil,
    :UsageCount => integer() | nil
  }

  def decode(value) do
    value
  end
end

