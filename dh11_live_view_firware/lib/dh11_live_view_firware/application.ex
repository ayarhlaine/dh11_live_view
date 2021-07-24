defmodule Dh11LiveViewFirware.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Dh11LiveViewFirware.Supervisor]

    children =
      [
        {NervesDHT, [name: :my_sensor, sensor: :dht11, pin: 10]}
        # Children for all targets
        # Starts a worker by calling: Dh11LiveViewFirware.Worker.start_link(arg)
        # {Dh11LiveViewFirware.Worker, arg},
      ] ++ children(target())

    Supervisor.start_link(children, opts)
  end

  # List all child processes to be supervised
  def children(:host) do
    [
      # Children that only run on the host
      # Starts a worker by calling: Dh11LiveViewFirware.Worker.start_link(arg)
      # {Dh11LiveViewFirware.Worker, arg},
    ]
  end

  def children(_target) do
    [
      # Children for all targets except host
      # Starts a worker by calling: Dh11LiveViewFirware.Worker.start_link(arg)
      # {Dh11LiveViewFirware.Worker, arg},
    ]
  end

  def target() do
    Application.get_env(:dh11_live_view_firware, :target)
  end
end
