# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecRestartPolicy do
  @moduledoc """
  Specification for the restart policy which applies to containers created as part of this service. 
  """

  @derive Jason.Encoder
  defstruct [
    :Condition,
    :Delay,
    :MaxAttempts,
    :Window
  ]

  @type t :: %__MODULE__{
    :Condition => String.t | nil,
    :Delay => integer() | nil,
    :MaxAttempts => integer() | nil,
    :Window => integer() | nil
  }

  def decode(value) do
    value
  end
end
