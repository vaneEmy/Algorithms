defmodule FibonacciSequential do
  @moduledoc """
  The Fibonacci is an infinite sequence of natural numbers in which the two first are 1, 1
  and the following ones are the sum of the two previous numbers

  1,1,2,3,5,8,13,21,34,55

  This module calculates the Fibonacci series using sequential search algorithm
  """

  @spec fib_series(integer()) :: integer()
  def fib_series(position) do
    positions = 2..position

    for i <- positions do
      if i == position do
        fib_num = generate_fib_series(position)
        IO.inspect(fib_num, label: "Fib number")
      end
    end
  end

  @spec generate_fib_series(integer()) :: integer()
  def generate_fib_series(position) when position in [1, 2], do: 1
  def generate_fib_series(position) do
    positions = 2..(position-1)

    fibs_numbers = Enum.reduce(positions, [1, 1], fn position, acc ->
      previous_number = Enum.at(acc, position - 1)
      second_previous_number = Enum.at(acc, position - 2)
      fib_num = previous_number + second_previous_number

      acc ++ [fib_num]
    end)

    List.last(fibs_numbers)
  end
end

FibonacciSequential.fib_series(1)
FibonacciSequential.fib_series(2)
FibonacciSequential.fib_series(3)
FibonacciSequential.fib_series(4)
FibonacciSequential.fib_series(5)
FibonacciSequential.fib_series(7)
FibonacciSequential.fib_series(10)
