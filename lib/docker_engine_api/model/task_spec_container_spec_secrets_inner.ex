# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecSecretsInner do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :File,
    :SecretID,
    :SecretName
  ]

  @type t :: %__MODULE__{
    :File => DockerEngineAPI.Model.TaskSpecContainerSpecSecretsInnerFile.t | nil,
    :SecretID => String.t | nil,
    :SecretName => String.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:File, :struct, DockerEngineAPI.Model.TaskSpecContainerSpecSecretsInnerFile)
  end
end
