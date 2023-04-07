defmodule FibonacciRecursion do
  @moduledoc """
  The Fibonacci is an infinite sequence of natural numbers in which the two first are 1, 1
  and the following ones are the sum of the two previous numbers

  1,1,2,3,5,8,13,21,34,55
  """

  @doc """
  Given a position it returns the fibonacci number
  """
  @spec fib_series(integer()) :: integer()
  def fib_series(0), do: 0
  def fib_series(1), do: 1
  def fib_series(position) do
    fib_series(position-1) + fib_series(position-2)
  end
end

FibonacciRecursion.fib_series(4) # Returns 3
FibonacciRecursion.fib_series(7) # Returns 13
