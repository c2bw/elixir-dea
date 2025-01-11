# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmSpecDispatcher do
  @moduledoc """
  Dispatcher configuration.
  """

  @derive JSON.Encoder
  defstruct [
    :HeartbeatPeriod
  ]

  @type t :: %__MODULE__{
    :HeartbeatPeriod => integer() | nil
  }

  def decode(value) do
    value
  end
end
