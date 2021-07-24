defmodule Dh11LiveViewUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Dh11LiveViewUiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Dh11LiveViewUi.PubSub},
      # Start the Endpoint (http/https)
      Dh11LiveViewUiWeb.Endpoint
      # Start a worker by calling: Dh11LiveViewUi.Worker.start_link(arg)
      # {Dh11LiveViewUi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dh11LiveViewUi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Dh11LiveViewUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
