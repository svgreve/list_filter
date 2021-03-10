defmodule ListFilter do
  @moduledoc """
  Documentation for `ListFilter`.
  """

  @doc """
  Returns number of odd numeric elements on list

  ## Examples

      iex> ListFilter.call([1, 3, 6, 43, "banana", "6", "abc"])
      3

  """
  require Integer
  def call(list) do
    list
    |> Enum.map(fn x -> is_integer(x) && Integer.is_odd(x) end)
    |> Enum.count( fn x -> x == true end)
  end


end
