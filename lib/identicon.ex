defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Identicon.hello()
      :world

  """

  def main(input) do
    input
    |> hash_input_string
  end

  def hash_input_string(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end

end
