# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpec do
  @moduledoc """
  Container spec for the service.  <p><br /></p>  > **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are > mutually exclusive. PluginSpec is only used when the Runtime field > is set to `plugin`. NetworkAttachmentSpec is used when the Runtime > field is set to `attachment`. 
  """

  @derive Jason.Encoder
  defstruct [
    :Image,
    :Labels,
    :Command,
    :Args,
    :Hostname,
    :Env,
    :Dir,
    :User,
    :Groups,
    :Privileges,
    :TTY,
    :OpenStdin,
    :ReadOnly,
    :Mounts,
    :StopSignal,
    :StopGracePeriod,
    :HealthCheck,
    :Hosts,
    :DNSConfig,
    :Secrets,
    :Configs,
    :Isolation,
    :Init,
    :Sysctls,
    :CapabilityAdd,
    :CapabilityDrop,
    :Ulimits
  ]

  @type t :: %__MODULE__{
    :Image => String.t | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :Command => [String.t] | nil,
    :Args => [String.t] | nil,
    :Hostname => String.t | nil,
    :Env => [String.t] | nil,
    :Dir => String.t | nil,
    :User => String.t | nil,
    :Groups => [String.t] | nil,
    :Privileges => DockerEngineAPI.Model.TaskSpecContainerSpecPrivileges.t | nil,
    :TTY => boolean() | nil,
    :OpenStdin => boolean() | nil,
    :ReadOnly => boolean() | nil,
    :Mounts => [DockerEngineAPI.Model.Mount.t] | nil,
    :StopSignal => String.t | nil,
    :StopGracePeriod => integer() | nil,
    :HealthCheck => DockerEngineAPI.Model.HealthConfig.t | nil,
    :Hosts => [String.t] | nil,
    :DNSConfig => DockerEngineAPI.Model.TaskSpecContainerSpecDnsConfig.t | nil,
    :Secrets => [DockerEngineAPI.Model.TaskSpecContainerSpecSecretsInner.t] | nil,
    :Configs => [DockerEngineAPI.Model.TaskSpecContainerSpecConfigsInner.t] | nil,
    :Isolation => String.t | nil,
    :Init => boolean() | nil,
    :Sysctls => %{optional(String.t) => String.t} | nil,
    :CapabilityAdd => [String.t] | nil,
    :CapabilityDrop => [String.t] | nil,
    :Ulimits => [DockerEngineAPI.Model.ResourcesUlimitsInner.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Privileges, :struct, DockerEngineAPI.Model.TaskSpecContainerSpecPrivileges)
     |> Deserializer.deserialize(:Mounts, :list, DockerEngineAPI.Model.Mount)
     |> Deserializer.deserialize(:HealthCheck, :struct, DockerEngineAPI.Model.HealthConfig)
     |> Deserializer.deserialize(:DNSConfig, :struct, DockerEngineAPI.Model.TaskSpecContainerSpecDnsConfig)
     |> Deserializer.deserialize(:Secrets, :list, DockerEngineAPI.Model.TaskSpecContainerSpecSecretsInner)
     |> Deserializer.deserialize(:Configs, :list, DockerEngineAPI.Model.TaskSpecContainerSpecConfigsInner)
     |> Deserializer.deserialize(:Ulimits, :list, DockerEngineAPI.Model.ResourcesUlimitsInner)
  end
end

