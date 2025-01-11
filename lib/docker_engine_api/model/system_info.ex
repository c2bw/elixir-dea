# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SystemInfo do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Containers,
    :ContainersRunning,
    :ContainersPaused,
    :ContainersStopped,
    :Images,
    :Driver,
    :DriverStatus,
    :DockerRootDir,
    :Plugins,
    :MemoryLimit,
    :SwapLimit,
    :KernelMemoryTCP,
    :CpuCfsPeriod,
    :CpuCfsQuota,
    :CPUShares,
    :CPUSet,
    :PidsLimit,
    :OomKillDisable,
    :IPv4Forwarding,
    :BridgeNfIptables,
    :BridgeNfIp6tables,
    :Debug,
    :NFd,
    :NGoroutines,
    :SystemTime,
    :LoggingDriver,
    :CgroupDriver,
    :CgroupVersion,
    :NEventsListener,
    :KernelVersion,
    :OperatingSystem,
    :OSVersion,
    :OSType,
    :Architecture,
    :NCPU,
    :MemTotal,
    :IndexServerAddress,
    :RegistryConfig,
    :GenericResources,
    :HttpProxy,
    :HttpsProxy,
    :NoProxy,
    :Name,
    :Labels,
    :ExperimentalBuild,
    :ServerVersion,
    :Runtimes,
    :DefaultRuntime,
    :Swarm,
    :LiveRestoreEnabled,
    :Isolation,
    :InitBinary,
    :ContainerdCommit,
    :RuncCommit,
    :InitCommit,
    :SecurityOptions,
    :ProductLicense,
    :DefaultAddressPools,
    :Warnings,
    :CDISpecDirs
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Containers => integer() | nil,
    :ContainersRunning => integer() | nil,
    :ContainersPaused => integer() | nil,
    :ContainersStopped => integer() | nil,
    :Images => integer() | nil,
    :Driver => String.t | nil,
    :DriverStatus => [[String.t]] | nil,
    :DockerRootDir => String.t | nil,
    :Plugins => DockerEngineAPI.Model.PluginsInfo.t | nil,
    :MemoryLimit => boolean() | nil,
    :SwapLimit => boolean() | nil,
    :KernelMemoryTCP => boolean() | nil,
    :CpuCfsPeriod => boolean() | nil,
    :CpuCfsQuota => boolean() | nil,
    :CPUShares => boolean() | nil,
    :CPUSet => boolean() | nil,
    :PidsLimit => boolean() | nil,
    :OomKillDisable => boolean() | nil,
    :IPv4Forwarding => boolean() | nil,
    :BridgeNfIptables => boolean() | nil,
    :BridgeNfIp6tables => boolean() | nil,
    :Debug => boolean() | nil,
    :NFd => integer() | nil,
    :NGoroutines => integer() | nil,
    :SystemTime => String.t | nil,
    :LoggingDriver => String.t | nil,
    :CgroupDriver => String.t | nil,
    :CgroupVersion => String.t | nil,
    :NEventsListener => integer() | nil,
    :KernelVersion => String.t | nil,
    :OperatingSystem => String.t | nil,
    :OSVersion => String.t | nil,
    :OSType => String.t | nil,
    :Architecture => String.t | nil,
    :NCPU => integer() | nil,
    :MemTotal => integer() | nil,
    :IndexServerAddress => String.t | nil,
    :RegistryConfig => DockerEngineAPI.Model.RegistryServiceConfig.t | nil,
    :GenericResources => [DockerEngineAPI.Model.GenericResourcesInner.t] | nil,
    :HttpProxy => String.t | nil,
    :HttpsProxy => String.t | nil,
    :NoProxy => String.t | nil,
    :Name => String.t | nil,
    :Labels => [String.t] | nil,
    :ExperimentalBuild => boolean() | nil,
    :ServerVersion => String.t | nil,
    :Runtimes => %{optional(String.t) => DockerEngineAPI.Model.Runtime.t} | nil,
    :DefaultRuntime => String.t | nil,
    :Swarm => DockerEngineAPI.Model.SwarmInfo.t | nil,
    :LiveRestoreEnabled => boolean() | nil,
    :Isolation => String.t | nil,
    :InitBinary => String.t | nil,
    :ContainerdCommit => DockerEngineAPI.Model.Commit.t | nil,
    :RuncCommit => DockerEngineAPI.Model.Commit.t | nil,
    :InitCommit => DockerEngineAPI.Model.Commit.t | nil,
    :SecurityOptions => [String.t] | nil,
    :ProductLicense => String.t | nil,
    :DefaultAddressPools => [DockerEngineAPI.Model.SystemInfoDefaultAddressPoolsInner.t] | nil,
    :Warnings => [String.t] | nil,
    :CDISpecDirs => [String.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Plugins, :struct, DockerEngineAPI.Model.PluginsInfo)
     |> Deserializer.deserialize(:RegistryConfig, :struct, DockerEngineAPI.Model.RegistryServiceConfig)
     |> Deserializer.deserialize(:GenericResources, :list, DockerEngineAPI.Model.GenericResourcesInner)
     |> Deserializer.deserialize(:Runtimes, :map, DockerEngineAPI.Model.Runtime)
     |> Deserializer.deserialize(:Swarm, :struct, DockerEngineAPI.Model.SwarmInfo)
     |> Deserializer.deserialize(:ContainerdCommit, :struct, DockerEngineAPI.Model.Commit)
     |> Deserializer.deserialize(:RuncCommit, :struct, DockerEngineAPI.Model.Commit)
     |> Deserializer.deserialize(:InitCommit, :struct, DockerEngineAPI.Model.Commit)
     |> Deserializer.deserialize(:DefaultAddressPools, :list, DockerEngineAPI.Model.SystemInfoDefaultAddressPoolsInner)
  end
end
