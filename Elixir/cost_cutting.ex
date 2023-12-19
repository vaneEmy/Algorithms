defmodule CostCutting do
  @moduledoc """

  """


  def cost_cutting(salaries) do
    salaries = Enum.reduce(salaries, [], fn salary, acc ->
      valid_salary = get_valid_salary(salary)
      [valid_salary | acc]
    end)

    IO.inspect(salaries, label: "salaries")
  end


  def get_valid_salary(salaries) do
    {max, min} = Enum.min_max(salaries)

    salaries
    |> List.delete(min)
    |> List.delete(max)
  end
end


CostCutting.cost_cutting([[1_000, 2_000, 3_000], [1_000, 2_000, 3_000], [1_000, 2_000, 3_000]])
