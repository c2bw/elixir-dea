# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.CreateImageInfo do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :id,
    :error,
    :errorDetail,
    :status,
    :progress,
    :progressDetail
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :error => String.t | nil,
    :errorDetail => DockerEngineAPI.Model.ErrorDetail.t | nil,
    :status => String.t | nil,
    :progress => String.t | nil,
    :progressDetail => DockerEngineAPI.Model.ProgressDetail.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:errorDetail, :struct, DockerEngineAPI.Model.ErrorDetail)
     |> Deserializer.deserialize(:progressDetail, :struct, DockerEngineAPI.Model.ProgressDetail)
  end
end
