defmodule Callback do
  use Agent

  def start_link(_) do
    Agent.start_link(fn -> :ok end, name: __MODULE__)
  end

  def set(rtn) do
    Agent.update(__MODULE__, fn _ -> rtn end)
  end

  def ping do
    Agent.get(__MODULE__, & &1)
  end
end
