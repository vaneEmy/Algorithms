defmodule CostCutting do
  @moduledoc """
  Company XYZ have been badly hit by recession and is taking a lot of cost cutting measures.
  They have decided to dislodge the person who gets the most salary and the one who gets the least.

  Given the salaries of these 3 employees working in the accounts department. You have to find out the salary of the
  person who survives.
  """

  @doc """
  From a list of lists, which represent the cases, for each case the salaries of the employees,
  we will look for those survivors for each of these.
  """
  @spec cost_cutting(list()) :: list()
  def cost_cutting(salaries) do
    salaries
    |> Enum.reduce([], fn salary, acc -> [get_valid_salary(salary) | acc] end)
    |> Enum.with_index()
    |> Enum.each(fn {survivor, index} -> IO.puts("Case #{index + 1}: #{survivor}") end)
  end


  @doc """
  A valid salary should not be less or higher than the salaries on the list
  """
  @spec get_valid_salary(list()) :: integer()
  def get_valid_salary(salaries) do
    {max, min} = Enum.min_max(salaries)

    salaries
    |> List.delete(min)
    |> List.delete(max)
    |> List.first()
  end
end


CostCutting.cost_cutting([[1_000, 2_000, 3_000], [1_000, 2_000, 3_000], [1_000, 2_000, 3_000]])
