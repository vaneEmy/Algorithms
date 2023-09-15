defmodule Owlery do
  @moduledoc """
  Documentation for `Owlery`.
  """

  @emails [
    "harry_potter@hogwarts.com",
    "hermione_granger@hogwarts.com",
    "ronald_weasley@hogwarts.com",
    "luna_lovegood@hogwarts.com",
    "draco_malfoy@hogwarts.com",
    "neville_longbottom@hogwarts.com"
  ]

  def start() do
    send_all(@emails)
  end

  @doc """
  Send all messages
  """
  @spec send_all(list()) :: list()
  def send_all(emails) do
    emails
    |> Enum.map(fn email -> Task.async(fn -> send_message(email) end) end)
    |> Enum.map(&Task.await/1)
  end

  @doc """
  Simulates the sending of an e-mail
  """
  @spec send_message(String.t()) :: {:ok, String.t()}
  def send_message(email) do
    Process.sleep(3_000)
    IO.puts("The message to #{email} was sent")
    {:ok, "message_sent"}
  end
end
