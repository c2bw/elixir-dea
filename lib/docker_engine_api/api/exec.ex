# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Api.Exec do
  @moduledoc """
  API calls for all endpoints tagged `Exec`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Create an exec instance
  Run a command inside a running container.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): ID or name of container
  - `exec_config` (ExecConfig): Exec configuration
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DockerEngineAPI.Model.IdResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec container_exec(Tesla.Env.client, String.t, DockerEngineAPI.Model.ExecConfig.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, DockerEngineAPI.Model.IdResponse.t} | {:error, Tesla.Env.t}
  def container_exec(connection, id, exec_config, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/containers/#{id}/exec")
      |> add_param(:body, :body, exec_config)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, DockerEngineAPI.Model.IdResponse},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {409, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Inspect an exec instance
  Return low-level information about an exec instance.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): Exec instance ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DockerEngineAPI.Model.ExecInspectResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec exec_inspect(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, DockerEngineAPI.Model.ExecInspectResponse.t} | {:error, Tesla.Env.t}
  def exec_inspect(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/exec/#{id}/json")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ExecInspectResponse},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Resize an exec instance
  Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance. 

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): Exec instance ID
  - `opts` (keyword): Optional parameters
    - `:h` (integer()): Height of the TTY session in characters
    - `:w` (integer()): Width of the TTY session in characters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec exec_resize(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def exec_resize(connection, id, opts \\ []) do
    optional_params = %{
      :h => :query,
      :w => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/exec/#{id}/resize")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, DockerEngineAPI.Model.ErrorResponse},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Start an exec instance
  Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command. 

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): Exec instance ID
  - `opts` (keyword): Optional parameters
    - `:body` (ExecStartConfig): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec exec_start(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def exec_start(connection, id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/exec/#{id}/start")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {409, DockerEngineAPI.Model.ErrorResponse}
    ])
  end
end
