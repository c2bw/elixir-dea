# NOTE: This file is auto generated by OpenAPI Generator 7.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Api.Image do
  @moduledoc """
  API calls for all endpoints tagged `Image`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Delete builder cache

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"keep-storage"` (integer()): Amount of disk space in bytes to keep for cache
    - `:all` (boolean()): Remove all types of build cache
    - `:filters` (String.t): A JSON encoded value of the filters (a `map[string][]string`) to process on the list of build cache objects.  Available filters:  - `until=<timestamp>` remove cache older than `<timestamp>`. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon's local time. - `id=<id>` - `parent=<id>` - `type=<string>` - `description=<string>` - `inuse` - `shared` - `private`

  ### Returns

  - `{:ok, DockerEngineAPI.Model.BuildPruneResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec build_prune(Tesla.Env.client, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, DockerEngineAPI.Model.BuildPruneResponse.t} | {:error, Tesla.Env.t}
  def build_prune(connection, opts \\ []) do
    optional_params = %{
      :"keep-storage" => :query,
      :all => :query,
      :filters => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/build/prune")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.BuildPruneResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Build an image
  Build an image from a tar archive with a `Dockerfile` in it.  The `Dockerfile` specifies how the image is built from the tar archive. It is typically in the archive's root, but can be at a different path or have a different name by specifying the `dockerfile` parameter. [See the `Dockerfile` reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the `Dockerfile` before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:dockerfile` (String.t): Path within the build context to the `Dockerfile`. This is ignored if `remote` is specified and points to an external `Dockerfile`.
    - `:t` (String.t): A name and optional tag to apply to the image in the `name:tag` format. If you omit the tag the default `latest` value is assumed. You can provide several `t` parameters.
    - `:extrahosts` (String.t): Extra hosts to add to /etc/hosts
    - `:remote` (String.t): A Git repository URI or HTTP/HTTPS context URI. If the URI points to a single text file, the file’s contents are placed into a file called `Dockerfile` and the image is built from that file. If the URI points to a tarball, the file is downloaded by the daemon and the contents therein used as the context for the build. If the URI points to a tarball and the `dockerfile` parameter is also specified, there must be a file with the corresponding path inside the tarball.
    - `:q` (boolean()): Suppress verbose build output.
    - `:nocache` (boolean()): Do not use the cache when building the image.
    - `:cachefrom` (String.t): JSON array of images used for build cache resolution.
    - `:pull` (String.t): Attempt to pull the image even if an older image exists locally.
    - `:rm` (boolean()): Remove intermediate containers after a successful build.
    - `:forcerm` (boolean()): Always remove intermediate containers, even upon failure.
    - `:memory` (integer()): Set memory limit for build.
    - `:memswap` (integer()): Total memory (memory + swap). Set as `-1` to disable swap.
    - `:cpushares` (integer()): CPU shares (relative weight).
    - `:cpusetcpus` (String.t): CPUs in which to allow execution (e.g., `0-3`, `0,1`).
    - `:cpuperiod` (integer()): The length of a CPU period in microseconds.
    - `:cpuquota` (integer()): Microseconds of CPU time that the container can get in a CPU period.
    - `:buildargs` (String.t): JSON map of string pairs for build-time variables. Users pass these values at build-time. Docker uses the buildargs as the environment context for commands run via the `Dockerfile` RUN instruction, or for variable expansion in other `Dockerfile` instructions. This is not meant for passing secret values.  For example, the build arg `FOO=bar` would become `{\"FOO\":\"bar\"}` in JSON. This would result in the query parameter `buildargs={\"FOO\":\"bar\"}`. Note that `{\"FOO\":\"bar\"}` should be URI component encoded.  [Read more about the buildargs instruction.](https://docs.docker.com/engine/reference/builder/#arg)
    - `:shmsize` (integer()): Size of `/dev/shm` in bytes. The size must be greater than 0. If omitted the system uses 64MB.
    - `:squash` (boolean()): Squash the resulting images layers into a single layer. *(Experimental release only.)*
    - `:labels` (String.t): Arbitrary key/value labels to set on the image, as a JSON map of string pairs.
    - `:networkmode` (String.t): Sets the networking mode for the run commands during build. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name or ID to which this container should connect to.
    - `:"Content-type"` (String.t):
    - `:"X-Registry-Config"` (String.t): This is a base64-encoded JSON object with auth configurations for multiple registries that a build may refer to.  The key is a registry URL, and the value is an auth configuration object, [as described in the authentication section](#section/Authentication). For example:  ``` {   \"docker.example.com\": {     \"username\": \"janedoe\",     \"password\": \"hunter2\"   },   \"https://index.docker.io/v1/\": {     \"username\": \"mobydock\",     \"password\": \"conta1n3rize14\"   } } ```  Only the registry domain name (and port if not the default 443) are required. However, for legacy reasons, the Docker Hub registry must be specified with both a `https://` prefix and a `/v1/` suffix even though Docker will prefer to use the v2 registry API.
    - `:platform` (String.t): Platform in the format os[/arch[/variant]]
    - `:target` (String.t): Target build stage
    - `:outputs` (String.t): BuildKit output configuration
    - `:version` (String.t): Version of the builder backend to use.  - `1` is the first generation classic (deprecated) builder in the Docker daemon (default) - `2` is [BuildKit](https://github.com/moby/buildkit)
    - `:body` (String.t): A tar archive compressed with one of the following algorithms: identity (no compression), gzip, bzip2, xz.

  ### Returns

  - `{:ok, Tesla.Env.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_build(Tesla.Env.client, keyword()) :: {:ok, Tesla.Env.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_build(connection, opts \\ []) do
    optional_params = %{
      :dockerfile => :query,
      :t => :query,
      :extrahosts => :query,
      :remote => :query,
      :q => :query,
      :nocache => :query,
      :cachefrom => :query,
      :pull => :query,
      :rm => :query,
      :forcerm => :query,
      :memory => :query,
      :memswap => :query,
      :cpushares => :query,
      :cpusetcpus => :query,
      :cpuperiod => :query,
      :cpuquota => :query,
      :buildargs => :query,
      :shmsize => :query,
      :squash => :query,
      :labels => :query,
      :networkmode => :query,
      :"Content-type" => :headers,
      :"X-Registry-Config" => :headers,
      :platform => :query,
      :target => :query,
      :outputs => :query,
      :version => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/build")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Create a new image from a container

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:container` (String.t): The ID or name of the container to commit
    - `:repo` (String.t): Repository name for the created image
    - `:tag` (String.t): Tag name for the create image
    - `:comment` (String.t): Commit message
    - `:author` (String.t): Author of the image (e.g., `John Hannibal Smith <hannibal@a-team.com>`)
    - `:pause` (boolean()): Whether to pause the container before committing
    - `:changes` (String.t): `Dockerfile` instructions to apply while committing
    - `:body` (ContainerConfig): The container configuration

  ### Returns

  - `{:ok, DockerEngineAPI.Model.IdResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_commit(Tesla.Env.client, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, DockerEngineAPI.Model.IdResponse.t} | {:error, Tesla.Env.t}
  def image_commit(connection, opts \\ []) do
    optional_params = %{
      :container => :query,
      :repo => :query,
      :tag => :query,
      :comment => :query,
      :author => :query,
      :pause => :query,
      :changes => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/commit")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, DockerEngineAPI.Model.IdResponse},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Create an image
  Pull or import an image.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:fromImage` (String.t): Name of the image to pull. The name may include a tag or digest. This parameter may only be used when pulling an image. The pull is cancelled if the HTTP connection is closed.
    - `:fromSrc` (String.t): Source to import. The value may be a URL from which the image can be retrieved or `-` to read the image from the request body. This parameter may only be used when importing an image.
    - `:repo` (String.t): Repository name given to an image when it is imported. The repo may include a tag. This parameter may only be used when importing an image.
    - `:tag` (String.t): Tag or digest. If empty when pulling an image, this causes all tags for the given image to be pulled.
    - `:message` (String.t): Set commit message for imported image.
    - `:"X-Registry-Auth"` (String.t): A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
    - `:changes` ([String.t]): Apply `Dockerfile` instructions to the image that is created, for example: `changes=ENV DEBUG=true`. Note that `ENV DEBUG=true` should be URI component encoded.  Supported `Dockerfile` instructions: `CMD`|`ENTRYPOINT`|`ENV`|`EXPOSE`|`ONBUILD`|`USER`|`VOLUME`|`WORKDIR`
    - `:platform` (String.t): Platform in the format os[/arch[/variant]].  When used in combination with the `fromImage` option, the daemon checks if the given image is present in the local image cache with the given OS and Architecture, and otherwise attempts to pull the image. If the option is not set, the host's native OS and Architecture are used. If the given image does not exist in the local image cache, the daemon attempts to pull the image with the host's native OS and Architecture. If the given image does exists in the local image cache, but its OS or architecture does not match, a warning is produced.  When used with the `fromSrc` option to import an image from an archive, this option sets the platform information for the imported image. If the option is not set, the host's native OS and Architecture are used for the imported image.
    - `:body` (String.t): Image content if the value `-` has been specified in fromSrc query parameter

  ### Returns

  - `{:ok, Tesla.Env.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_create(Tesla.Env.client, keyword()) :: {:ok, Tesla.Env.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_create(connection, opts \\ []) do
    optional_params = %{
      :fromImage => :query,
      :fromSrc => :query,
      :repo => :query,
      :tag => :query,
      :message => :query,
      :"X-Registry-Auth" => :headers,
      :changes => :query,
      :platform => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/images/create")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Remove an image
  Remove an image, along with any untagged parent images that were referenced by that image.  Images can't be removed if they have descendant images, are being used by a running container or are being used by a build.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID
  - `opts` (keyword): Optional parameters
    - `:force` (boolean()): Remove the image even if it is being used by stopped containers or has other tags
    - `:noprune` (boolean()): Do not delete untagged parent images

  ### Returns

  - `{:ok, [%ImageDeleteResponseItem{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, list(DockerEngineAPI.Model.ImageDeleteResponseItem.t)} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_delete(connection, name, opts \\ []) do
    optional_params = %{
      :force => :query,
      :noprune => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/images/#{name}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ImageDeleteResponseItem},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {409, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Export an image
  Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ```

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_get(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def image_get(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/images/#{name}/get")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Export several images
  Get a tarball containing all images and metadata for several image repositories.  For each value of the `names` parameter: if it is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the 'repositories' file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet).

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:names` ([String.t]): Image names to filter by

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_get_all(Tesla.Env.client, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def image_get_all(connection, opts \\ []) do
    optional_params = %{
      :names => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/images/get")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Get the history of an image
  Return parent layers of an image.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%HistoryResponseItem{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_history(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, list(DockerEngineAPI.Model.HistoryResponseItem.t)} | {:error, Tesla.Env.t}
  def image_history(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/images/#{name}/history")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.HistoryResponseItem},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Inspect an image
  Return low-level information about an image.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or id
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DockerEngineAPI.Model.ImageInspect.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_inspect(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ImageInspect.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_inspect(connection, name, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/images/#{name}/json")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ImageInspect},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  List Images
  Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:all` (boolean()): Show all images. Only images from a final layer (no children) are shown by default.
    - `:filters` (String.t): A JSON encoded value of the filters (a `map[string][]string`) to process on the images list.  Available filters:  - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `dangling=true` - `label=key` or `label=\"key=value\"` of an image label - `reference`=(`<image-name>[:<tag>]`) - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `until=<timestamp>`
    - `:"shared-size"` (boolean()): Compute and show shared size as a `SharedSize` field on each image.
    - `:digests` (boolean()): Show digest information as a `RepoDigests` field on each image.

  ### Returns

  - `{:ok, [%ImageSummary{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_list(Tesla.Env.client, keyword()) :: {:ok, list(DockerEngineAPI.Model.ImageSummary.t)} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_list(connection, opts \\ []) do
    optional_params = %{
      :all => :query,
      :filters => :query,
      :"shared-size" => :query,
      :digests => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/images/json")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ImageSummary},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Import images
  Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet).

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:quiet` (boolean()): Suppress progress details during load.
    - `:body` (String.t): Tar archive containing images

  ### Returns

  - `{:ok, Tesla.Env.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_load(Tesla.Env.client, keyword()) :: {:ok, Tesla.Env.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_load(connection, opts \\ []) do
    optional_params = %{
      :quiet => :query,
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/images/load")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Delete unused images

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:filters` (String.t): Filters to process on the prune list, encoded as JSON (a `map[string][]string`). Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), prune only    unused *and* untagged images. When set to `false`    (or `0`), all unused images are pruned. - `until=<string>` Prune images created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune images with (or without, in case `label!=...` is used) the specified labels.

  ### Returns

  - `{:ok, DockerEngineAPI.Model.ImagePruneResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_prune(Tesla.Env.client, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, DockerEngineAPI.Model.ImagePruneResponse.t} | {:error, Tesla.Env.t}
  def image_prune(connection, opts \\ []) do
    optional_params = %{
      :filters => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/images/prune")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ImagePruneResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Push an image
  Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, `registry.example.com/myimage:latest`.  The push is cancelled if the HTTP connection is closed.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID.
  - `x_registry_auth` (String.t): A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
  - `opts` (keyword): Optional parameters
    - `:tag` (String.t): The tag to associate with the image on the registry.

  ### Returns

  - `{:ok, Tesla.Env.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_push(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Tesla.Env.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_push(connection, name, x_registry_auth, opts \\ []) do
    optional_params = %{
      :tag => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/images/#{name}/push")
      |> add_param(:headers, :"X-Registry-Auth", x_registry_auth)
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Search images
  Search for an image on Docker Hub.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `term` (String.t): Term to search
  - `opts` (keyword): Optional parameters
    - `:limit` (integer()): Maximum number of results to return
    - `:filters` (String.t): A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:  - `is-official=(true|false)` - `stars=<number>` Matches images that has at least 'number' stars.

  ### Returns

  - `{:ok, [%ImageSearchResponseItem{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_search(Tesla.Env.client, String.t, keyword()) :: {:ok, list(DockerEngineAPI.Model.ImageSearchResponseItem.t)} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_search(connection, term, opts \\ []) do
    optional_params = %{
      :limit => :query,
      :filters => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/images/search")
      |> add_param(:query, :term, term)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.ImageSearchResponseItem},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Tag an image
  Tag an image so that it becomes part of a repository.

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID to tag.
  - `opts` (keyword): Optional parameters
    - `:repo` (String.t): The repository to tag in. For example, `someuser/someimage`.
    - `:tag` (String.t): The name of the new tag.

  ### Returns

  - `{:ok, Tesla.Env.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_tag(Tesla.Env.client, String.t, keyword()) :: {:ok, Tesla.Env.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def image_tag(connection, name, opts \\ []) do
    optional_params = %{
      :repo => :query,
      :tag => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/images/#{name}/tag")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, false},
      {400, DockerEngineAPI.Model.ErrorResponse},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {409, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end
end
