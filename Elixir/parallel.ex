defmodule Parallel do

  def map(collection, fun) do
    parent = self()

    processes = Enum.map(collection, fn item ->
      spawn_link(fn () ->
        send(parent, {self(), fun.(item)})
      end)
    end)

    Enum.map(processes, fn(pid) ->
      receive do
        {^pid, result} -> result
      end
    end)
  end
end
