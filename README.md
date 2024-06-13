# Elixir - DockerEngineAPI

The Engine API is an HTTP API served by Docker Engine. It is the API the Docker client uses to communicate with the Engine, so everything the Docker client can do can be done with the API.  Most of the client&#39;s commands map directly to API endpoints (e.g. &#x60;docker ps&#x60; is &#x60;GET /containers/json&#x60;). The notable exception is running containers, which consists of several API calls.
  ### Errors

  The API uses standard HTTP status codes to indicate the success or failure of the API call.
  

  ### Versioning

  The API is usually changed in each release, so API calls are versioned to ensure that clients don't break. To lock to a specific version of the API, you prefix the URL with its version. For example, call `/v1.30/info` to use the v1.30 version of the `/info` endpoint. If the API version specified in the URL is not supported by the daemon, a HTTP `400 Bad Request` error message is returned. If you omit the version-prefix, the current version of the API (v1.45) is used. For example, calling `/info` is the same as calling `/v1.45/info`. Using the API without a version-prefix is deprecated and will be removed in a future release.

  Engine releases in the near future should support this version of the API, so your client will continue to work even if it is talking to a newer Engine. The API uses an open schema model, which means the server may add extra properties to responses. Likewise, the server will ignore any extra query parameters and request body properties. When you write clients, you need to ignore additional properties in responses to ensure they do not break when talking to newer daemons.

  ### Authentication

  Authentication for registries is handled client side. The client has to send authentication details to various endpoints that need to communicate with registries, such as `POST /images/(name)/push`. These are sent as `X-Registry-Auth` header as a [base64url encoded](https://tools.ietf.org/html/rfc4648#section-5) (JSON) string with the following structure:

  ```json
  {
    "username": "string",
    "password": "string",
    "email": "string",
    "serveraddress": "string"
  }
  ```

  The `serveraddress` is a domain/IP without a protocol. Throughout this structure, double quotes are required.

  If you have already got an identity token from the `/auth` endpoint, you can just pass this instead of credentials:

  ```json
  {
    "identitytoken": "9cbaf023786cd7..."
  }
  ```

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `elixir_dea` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:elixir_dea, "~> 1.45"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/elixir_dea][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :elixir_dea, base_url: "http://localhost/v1.45"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`DockerEngineAPI.Connection.new/1`:

```elixir
client = DockerEngineAPI.Connection.new(base_url: "http://localhost/v1.45")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/elixir_dea
