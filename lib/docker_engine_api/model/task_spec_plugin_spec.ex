# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecPluginSpec do
  @moduledoc """
  Plugin spec for the service.  *(Experimental release only.)*  <p><br /></p>  > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are > mutually exclusive. PluginSpec is only used when the Runtime field > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime > field is set to `attachment`. 
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Remote,
    :Disabled,
    :PluginPrivilege
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Remote => String.t | nil,
    :Disabled => boolean() | nil,
    :PluginPrivilege => [DockerEngineAPI.Model.PluginPrivilege.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:PluginPrivilege, :list, DockerEngineAPI.Model.PluginPrivilege)
  end
end
