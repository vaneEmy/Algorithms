defmodule EventPlanning do
  @moduledoc """

  """

  @doc """
  Return the minimum cost necessary for a vacations including hotel reservations for each participant and within budget.
  Failure to find a hotel reservation indicates that it is better to stay at home.
  """
  @spec event_planning(integer(), integer(), list(map())) :: String.t() | integer()
  def event_planning(num_part, budget, hotels) do
    hotels
    |> get_available_hotels(num_part)
    |> cost_within_budget(budget, num_part)
    |> get_minimum_cost()
  end

  @doc """
  From a list of costs for available hotels, the lowest cost hotel is got.
  If no hotels are available, a message is returned indicating that it is preferable to stay at home.
  """
  @spec get_minimum_cost(list(integer())) :: String.t() | integer()
  def get_minimum_cost(costs) do
    if Enum.empty?(costs),
      do: "stay home",
      else: Enum.min(costs)
  end

  @doc """
  For each of the available hotels, the cost is calculated for the number of participants,
  if the cost is within the budget, it is accumulated in a list of costs.
  """
  @spec cost_within_budget(list(map()), integer(), integer()) :: list(integer())
  def cost_within_budget(hotels_available, budget, num_participants) do
    Enum.reduce(hotels_available, [], fn %{price_per_person: price_per_person}, acc ->
      cost = num_participants * price_per_person

      if budget >= cost,
        do: [cost | acc],
        else: acc
    end)
  end

  @doc """
  Gets a list of maps of available hotels for participants
  """
  @spec get_available_hotels(list(map()), integer()) :: list(map())
  def get_available_hotels(hotels, num_participants) do
    Enum.filter(hotels, fn %{beds_available: beds_available} ->
      Enum.any?(beds_available, &are_beds_available?(&1, num_participants))
    end)
  end

  # @doc """
  # If there are enough beds for the participants returns true, otherwise returns false
  # """
  @spec are_beds_available?(integer(), integer()) :: boolean()
  defp are_beds_available?(beds, participants) when beds >= participants, do: true
  defp are_beds_available?(beds, participants) when beds < participants, do: false
end

num_participants1 = 3
budget1 = 1_000
hotels1 = [
  %{
    price_per_person: 200,
    beds_available: [0, 2, 2]
  },
  %{
    price_per_person: 300,
    beds_available: [27, 3, 20]
  }
]

event_planning1 = EventPlanning.event_planning(num_participants1, budget1, hotels1)
IO.puts(event_planning1)

num_participants2 = 5
budget2 = 2_000
hotels2 = [
  %{
    price_per_person: 300,
    beds_available: [4, 3, 0, 4]
  },
  %{
    price_per_person: 450,
    beds_available: [7, 8, 0, 13]
  }
]

event_planning2 = EventPlanning.event_planning(num_participants2, budget2, hotels2)
IO.puts(event_planning2)
