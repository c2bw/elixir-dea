# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerSummaryHostConfig do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :NetworkMode
  ]

  @type t :: %__MODULE__{
    :NetworkMode => String.t | nil
  }

  def decode(value) do
    value
  end
end

